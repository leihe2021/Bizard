# Skill: Funnel Plot (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- FunnelPlotR
- data.table
- gridExtra
- jsonlite

## Minimal reproducible code
```r
#| label: fig-1Funnel-plot-metafor
#| fig-cap: "Funnel Plot"
#| out.width: "95%"
#| fig-height: 5
#| fig-width: 8
#| warning: false
#| message: false

# Funnel Plot
p <- funnel_plot(
  data, numerator = los, denominator = prds,  group = provnum, data_type = "SR",
  limit = 99, label = "outlier", sr_method = "SHMI", trim_by=0.1, 
  title = "Funnel Plot", x_range = "auto", y_range = "auto"
  )

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/058-funnel-plot.html
