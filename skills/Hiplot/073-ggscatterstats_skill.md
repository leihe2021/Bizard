# Skill: Scatterstats (R)

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
#| label: fig-1ggpubr-boxplot
#| fig-cap: "Scatterstats"
#| out.width: "95%"
#| fig-height: 7
#| fig-width: 7
#| warning: false
#| error: false
#| message: false

# Scatterstats
p <- ggscatterstats(
  data = data, x = rating, y = budget
)

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/073-ggscatterstats.html
