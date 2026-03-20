# Skill: Meta-analysis of Binary Data (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- ggplotify
- jsonlite
- meta

## Minimal reproducible code
```r
#| label: fig-1meta-bin
#| fig-cap: "Meta-analysis of Binary Data"
#| out.width: "95%"
#| fig-height: 7
#| fig-width: 12
#| warning: false
#| error: false
#| message: false

# Meta-analysis of Binary Data
p <- as.ggplot(function(){
  meta::forest(m1, layout = "meta")
  })

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/119-meta-bin.html
