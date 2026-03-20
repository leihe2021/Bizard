# Skill: Directed Acyclic Graphs (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- ggdag

## Minimal reproducible code
```r
#| label: fig-1ggdag
#| fig-cap: "Directed Acyclic Graphs"
#| out.width: "95%"
#| fig-height: 5
#| fig-width: 5
#| warning: false
#| error: false
#| message: false

# Directed Acyclic Graphs
p <- ggdag(tidy_ggdag) +
  theme_dag() 

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/065-ggdag.html
