# Skill: Piestats (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- ggplot2
- ggstatsplot
- jsonlite

## Minimal reproducible code
```r
#| label: fig-1ggpiestats
#| fig-cap: "Piestats"
#| out.width: "95%"
#| fig-height: 4
#| fig-width: 7
#| warning: false
#| error: false
#| message: false

# Piestats
p <- ggpiestats(data = data, x = am, y = cyl,
                paired = F) +
  scale_fill_manual(values = c("#3B4992FF","#EE0000FF"))

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/071-ggpiestats.html
