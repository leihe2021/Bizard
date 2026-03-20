# Skill: Perspective (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- ggplotify
- jsonlite
- shape

## Minimal reproducible code
```r
#| label: fig-1perspective
#| fig-cap: "Perspective"
#| out.width: "95%"
#| fig-height: 5
#| fig-width: 5
#| warning: false
#| error: false
#| message: false

# Perspective
p <- as.ggplot(function() {
  persp(as.matrix(data),
    theta = 45, phi = 20,
    expand = 0.5,
    r = 180, col = col,
    ltheta = 120,
    shade = 0.5,
    ticktype = "detailed",
    xlab = "X", ylab = "Y", zlab = "Z",
    border = "black" # could be NA
  )
  title("Perspective Plot", line = 0)
})

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/137-perspective.html
