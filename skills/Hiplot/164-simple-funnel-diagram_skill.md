# Skill: Simple Funnel Diagram (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- echarts4r
- jsonlite
- magrittr

## Minimal reproducible code
```r
#| label: fig-1simple-funnel-diagram
#| fig-cap: "Simple Funnel Diagram"
#| out.width: "95%"
#| fig-height: 6
#| fig-width: 6
#| warning: false
#| error: false
#| message: false

# Simple Funnel Diagram
p <- data %>%
  e_charts() %>%
  e_funnel(value, key) %>%
  e_title("Funnel") %>%
  e_theme("macarons")

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/164-simple-funnel-diagram.html
