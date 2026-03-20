# Skill: Histostats (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- ggstatsplot
- jsonlite

## Minimal reproducible code
```r
#| label: fig-1gghistostats
#| fig-cap: "Histostats"
#| out.width: "95%"
#| fig-height: 7
#| fig-width: 7
#| warning: false
#| error: false
#| message: false

# Histostats
p <- grouped_gghistostats(
  data = data, x = budget, grouping.var = genre,
  effsize.type = "unbiased",
  type = "parametric",
  centrality.k = 2,
  plotgrid.args = list(ncol = 2),
  centrality.parameter = "solid",
  centrality.line.args = list(size = 1, color = "black"),
  bar.fill = "#0D47A1", 
  centrality.label.args = list(color = "#0D47A1", size = 3),
  test.value = as.numeric(0),
  normal.curve = F,
  normal.curve.args = list(size = 1)
)

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/067-gghistostats.html
