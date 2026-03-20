# Skill: Heatmap (R)

## Category
Correlation

## When to use
A heatmap is a powerful visualization tool that represents matrix values through color gradients. It is widely used to illustrate gene expression differences across sample groups, variations in compound concentrations, and pairwise sample similarities. More broadly, any tabular d…

## Required R packages
- ComplexHeatmap
- RColorBrewer
- circlize
- cowplot
- d3heatmap
- dplyr
- ggplot2
- gridExtra
- heatmaply
- hrbrthemes

## Minimal reproducible code
```r
#| label: fig-BasicHeatBasicR
#| fig-cap: "Basic Heatmap Basic R"
#| out.width: "95%"
#| warning: false

heatmap(mtcars_matrix)
```

## Full tutorial
https://openbiox.github.io/Bizard/Correlation/Heatmap.html
