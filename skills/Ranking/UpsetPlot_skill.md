# Skill: Upset Plot (R)

## Category
Ranking

## When to use
The Upset diagram is similar to the Venn diagram, mainly showing the number of elements in the intersection of different sets. However, when the number of sets in the Venn diagram reaches 5, the readability begins to drop sharply. The Upset diagram can well solve the problem of p…

## Required R packages
- UpSetR
- ggupset

## Minimal reproducible code
```r
#| label: fig-1.1BasicUpset
#| fig-cap: "Basic Upset Plot"
#| out.width: "95%"
#| warning: false
#| message: false

# Use the above three data types to draw the Upset graph
upset(fromList(listInput))
upset(fromExpression(expressionInput))
upset(movies)
```

## Full tutorial
https://openbiox.github.io/Bizard/Ranking/UpsetPlot.html
