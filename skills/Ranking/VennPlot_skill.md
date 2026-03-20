# Skill: Veen Plot (R)

## Category
Ranking

## When to use
For the visualization of Venn diagrams, the commonly used R packages are ggVennDiagram and VennDiagram. Compared with the VennDiagram package, ggVennDiagram has the advantages of being applicable to more groups, adapting to ggplot2 syntax, and flexibly setting output formats, and…

## Required R packages
- VennDiagram
- ggVennDiagram
- ggplot2

## Minimal reproducible code
```r
#| label: fig-1.1BasicVeen
#| fig-cap: "Basic Venn Diagram"
#| out.width: "95%"
#| warning: false
#| message: false

# Basic Venn Diagram
ggVennDiagram(x)
```

## Full tutorial
https://openbiox.github.io/Bizard/Ranking/VennPlot.html
