# Skill: Nomogram (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- ggplotify
- jsonlite
- rms
- survival

## Minimal reproducible code
```r
#| label: fig-1nomogram
#| fig-cap: "Nomogram"
#| out.width: "95%"
#| fig-height: 9
#| fig-width: 12
#| warning: false
#| error: false
#| message: false

# Nomogram
p <- as.ggplot(function() {
  plot(cox_nomo, scale = 1)
  title(main = "Nomogram (COX)")
})

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/131-nomogram.html
