# Skill: Biplot (R)

## Category
Correlation

## When to use
Visualize biplot data in a biomedical context.

## Required R packages
- dplyr
- ggbiplot

## Minimal reproducible code
```r
#| label: fig-1.1BasicPlot
#| fig-cap: "Basic Plot"
#| out.width: "95%"
#| warning: false
#| message: false
#| fig-width: 6
#| fig-height: 6

iris.gg <-
  ggbiplot(iris.pca, obs.scale = 1, var.scale = 1,
           groups = iris$Species, point.size=2,
           varname.size = 3, 
           varname.color = "black",
           varname.adjust = 1.2,
           ellipse = TRUE, 
           circle = TRUE) +
  labs(fill = "Species", color = "Species") +
  theme_minimal(base_size = 14) +
  theme(legend.direction = 'horizontal', legend.position = 'top')

iris.gg
```

## Full tutorial
https://openbiox.github.io/Bizard/Correlation/Biplot.html
