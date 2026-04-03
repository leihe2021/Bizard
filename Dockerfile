# Bizard CI Environment Image
# Pre-installs R, Python, Julia, Quarto and all project dependencies
# so that CI builds only need to update differential changes.
#
# Build:
#   docker build --build-arg GITHUB_PAT=<token> -t ghcr.io/openbiox/bizard-env .
#
# The image is automatically built by .github/workflows/build-env-image.yml

FROM rocker/r-ver:4

LABEL org.opencontainers.image.source="https://github.com/openbiox/Bizard"
LABEL org.opencontainers.image.description="Bizard CI build environment with pre-installed R, Python, Julia, and Quarto dependencies"

# ── System dependencies ──────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
    # Build tools
    build-essential cmake gfortran \
    # Common R package system deps
    libcurl4-openssl-dev libssl-dev libxml2-dev \
    # Graphics and fonts
    libcairo2-dev libxt-dev libpng-dev libjpeg-dev libtiff-dev \
    libfontconfig1-dev libfreetype6-dev libharfbuzz-dev libfribidi-dev \
    # Spatial (sf, gstat, etc.)
    libgdal-dev libgeos-dev libproj-dev libudunits2-dev \
    # Math / optimization
    libglpk-dev libgsl-dev libgmp-dev libmpfr-dev \
    # Image processing (magick)
    libmagick++-dev \
    # Version control
    git libgit2-dev \
    # V8 JavaScript engine
    libv8-dev \
    # Network / security
    libsodium-dev libssh2-1-dev \
    # Data formats
    libprotobuf-dev protobuf-compiler libjq-dev \
    # PDF / SVG
    librsvg2-dev libpoppler-cpp-dev \
    # HDF5 / FFTW
    libfftw3-dev libhdf5-dev \
    # Python 3 + pip
    python3 python3-pip python3-dev python3-venv \
    # Misc tools
    curl wget \
    && rm -rf /var/lib/apt/lists/*

# ── Quarto (latest release) ─────────────────────────────────────
RUN QUARTO_VER=$(curl -s https://api.github.com/repos/quarto-dev/quarto-cli/releases/latest \
      | grep '"tag_name"' | sed 's/.*"v\([^"]*\)".*/\1/') && \
    if [ -z "$QUARTO_VER" ]; then \
      echo "ERROR: Failed to determine latest Quarto version from GitHub API"; exit 1; \
    fi && \
    echo "Installing Quarto ${QUARTO_VER}..." && \
    curl -fLo quarto.deb \
      "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VER}/quarto-${QUARTO_VER}-linux-amd64.deb" && \
    dpkg -i quarto.deb && \
    rm quarto.deb

# ── TinyTeX (for LaTeX rendering) ───────────────────────────────
RUN quarto install tinytex --no-prompt

# ── R packages ───────────────────────────────────────────────────
# pak provides fast parallel installation with Remotes + Bioconductor support
RUN Rscript -e 'install.packages("pak", repos = "https://r-lib.github.io/p/pak/stable/")'

COPY DESCRIPTION /tmp/bizard/DESCRIPTION

# Pass GITHUB_PAT at build time to avoid GitHub API rate limits
ARG GITHUB_PAT=""
ENV GITHUB_PAT=${GITHUB_PAT}

RUN cd /tmp/bizard && \
    Rscript -e 'pak::local_install_deps(dependencies = TRUE)'

# Clear token from environment
ENV GITHUB_PAT=""

# ── Python packages ──────────────────────────────────────────────
# Use a virtual environment to avoid PEP 668 issues on newer Ubuntu
RUN python3 -m venv /opt/python-venv
ENV PATH="/opt/python-venv/bin:${PATH}"

COPY requirements.txt /tmp/bizard/requirements.txt
RUN pip install --upgrade pip && \
    pip install -r /tmp/bizard/requirements.txt

# ── Julia ────────────────────────────────────────────────────────
ARG JULIA_VERSION=1.10.7
RUN JULIA_MAJOR_MINOR=$(echo "${JULIA_VERSION}" | cut -d. -f1-2) && \
    curl -fsSL "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_MAJOR_MINOR}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" \
      | tar -xz -C /opt && \
    ln -s "/opt/julia-${JULIA_VERSION}/bin/julia" /usr/local/bin/julia

COPY Julia/Project.toml /tmp/bizard/Julia/Project.toml

# Pre-create the Quarto-managed QuartoNotebookRunner environment
RUN JULIA_MAJOR_MINOR=$(julia -e 'print(VERSION.major, ".", VERSION.minor)') && \
    QUARTO_JULIA_ENV="${HOME}/.local/share/quarto/julia/environments/v${JULIA_MAJOR_MINOR}" && \
    mkdir -p "${QUARTO_JULIA_ENV}" && \
    julia --project="${QUARTO_JULIA_ENV}" -e ' \
      using Pkg; \
      Pkg.add("QuartoNotebookRunner"); \
      Pkg.instantiate(); \
      using QuartoNotebookRunner \
    '

# Install tutorial Julia packages
RUN julia --project=/tmp/bizard/Julia -e ' \
      using Pkg; \
      Pkg.resolve(); \
      Pkg.instantiate(); \
      using CairoMakie, DataFrames, Statistics \
    '

# ── Cleanup ──────────────────────────────────────────────────────
RUN rm -rf /tmp/bizard /tmp/downloaded_packages /tmp/*.rds

# ── Verify installations ────────────────────────────────────────
RUN echo "=== Environment ===" && \
    echo "R: $(R --version | head -1)" && \
    echo "Python: $(python3 --version)" && \
    echo "Julia: $(julia --version)" && \
    echo "Quarto: $(quarto --version)" && \
    echo "==================="
