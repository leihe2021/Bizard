# Skill: Likert Plot (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- ggplotify
- jsonlite
- likert

## Minimal reproducible code
```r
#| label: fig-1likert
#| fig-cap: "Likert Plot"
#| out.width: "95%"
#| fig-height: 5
#| fig-width: 8
#| warning: false
#| error: false
#| message: false

# Likert Plot
pobj <- likert(data)
colrs <- c("#3B4992FF","#EE0000FF")
p <- as.ggplot(plot(pobj, type = "bar", 
                    low.color = colrs[1], high.color = colrs[2], wrap = 50))

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/091-likert.html
