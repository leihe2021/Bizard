# Skill: Extended Scatter (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- ggExtra
- ggplot2
- jsonlite

## Minimal reproducible code
```r
#| label: fig-1Eulerr
#| fig-cap: "Extended Scatter"
#| out.width: "95%"
#| fig-height: 4
#| fig-width: 6
#| warning: false
#| message: false

# Extended Scatter
p <- ggplot(data, aes(x = wt, y = mpg, color = cyl, size = cyl)) +
  geom_point() +
  geom_rug(alpha = 0.2, size = 1.5, col = "#4f80b3") +
  theme(legend.position = "none")

p <- ggMarginal(
  p, type = "densigram", fill = "#7054cc", color = "#7f0080",
  size = 4, bins = 30)

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/052-extended-scatter.html
