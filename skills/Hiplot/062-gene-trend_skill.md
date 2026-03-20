# Skill: Gene Cluster Trend (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- Mfuzz
- RColorBrewer
- data.table
- ggplotify
- jsonlite

## Minimal reproducible code
```r
#| label: fig-1Gene-trend
#| fig-cap: "Gene Cluster Trend"
#| out.width: "95%"
#| fig-height: 6
#| fig-width: 10
#| warning: false
#| message: false

# Gene Cluster Trend
p <- as.ggplot(function(){
  mfuzz.plot2(
  eset,
  cl,
  xlab = "Time",
  ylab = "Expression changes",
  mfrow = c(2,(c/2+0.5)),
  colo = "fancy",
  centre = T,
  centre.col = "red",
  time.labels = colnames(eset),
  x11=F)
  })

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/062-gene-trend.html
