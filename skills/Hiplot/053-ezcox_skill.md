# Skill: Cox Models Forest (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- ezcox
- jsonlite

## Minimal reproducible code
```r
#| label: fig-1Ezcox
#| fig-cap: "Cox Models Forest"
#| out.width: "95%"
#| fig-height: 4
#| fig-width: 6
#| warning: false
#| message: false

# Cox Models Forest
p <- show_forest(
  data = data,
  covariates = c("sex", "ph.ecog"),
  controls = "age",
  merge_models = F,
  drop_controls = F,
  add_caption = T
)

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/053-ezcox.html
