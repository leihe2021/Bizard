# Skill: 3D Pie (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- ggplotify
- jsonlite
- plotrix

## Minimal reproducible code
```r
#| label: fig-1pie-3d
#| fig-cap: "3D Pie"
#| out.width: "95%"
#| fig-height: 6
#| fig-width: 6.5
#| warning: false
#| error: false
#| message: false

# 3D Pie
pie3D(data$Value, radius = 0.8, height = 0.05, theta = 0.8,
      labels = paste(data$Group, "\n(n=", data$Value, ", ",
                     round(data$Value / sum(data$Value) * 100, 2), "%)",
                     sep = ""),
      explode = 0.1, main = "", labelcex = 1, shade = 0.4, labelcol = "black",
      col = c("#E64B35FF","#4DBBD5FF","#00A087FF","#3C5488FF"))
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/138-pie-3d.html
