# Skill: Flower plot (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- flowerplot
- ggplotify
- jsonlite

## Minimal reproducible code
```r
#| label: fig-1Flowerplot
#| fig-cap: "Flower plot"
#| out.width: "95%"
#| fig-height: 7
#| fig-width: 7
#| warning: false
#| message: false

# Flower plot
p <- as.ggplot(function(){
  flowerplot(
    flower_dat = data,
    angle = 90,
    a = 0.5,
    b = 2,
    r = 1,
    ellipse_col = "RdBu",
    circle_col = "#FFFFFF",
    label_text_cex = 1
  )})

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/056-flowerplot.html
