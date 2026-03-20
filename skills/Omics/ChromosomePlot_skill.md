# Skill: Chromosome Plot (R)

## Category
Omics

## When to use
An chromosome plot (ideogram) is a graphical tool used to visualize chromosome structure and various genomic features on chromosomes. It typically represents each chromosome individually, drawing the length and structures such as the centromere to scale. Additionally, it can anno…

## Required R packages
- RIdeogram

## Minimal reproducible code
```r
#| label: fig-1BasicChromosomePlot
#| fig-cap: "Basic Chromosome Plot"
#| out.width: "95%"
#| warning: false
#| eval: false

# Basic Chromosome Plot
ideogram(karyotype = human_karyotype)
convertSVG("chromosome.svg", device = "png")
```

## Full tutorial
https://openbiox.github.io/Bizard/Omics/ChromosomePlot.html
