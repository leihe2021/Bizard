# Skill: ComplexHeatmap (R)

## Category
Correlation

## When to use
Visualize complexheatmap data in a biomedical context.

## Required R packages
- ComplexHeatmap
- circlize
- dendextend
- gridExtra
- pheatmap
- tidyr

## Minimal reproducible code
```r
#| label: fig-1.1BasicComplexheatmap
#| fig-cap: "Continuous variables"
#| out.width: "95%"
#| warning: false
#| message: false

# Continuous variables
Heatmap(data_TCGA , name = "Methylation")
```

## Full tutorial
https://openbiox.github.io/Bizard/Correlation/ComplexHeatmap.html
