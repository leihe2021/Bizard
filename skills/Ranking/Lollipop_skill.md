# Skill: Lollipop Plot (R)

## Category
Ranking

## When to use
A lollipop plot is a variation of a bar chart and a scatter plot. It consists of a line segment and a point, which can clearly display data while reducing the amount of graphics. At the same time, the lollipop plot can help align values with categories and is very suitable for co…

## Required R packages
- cowplot
- ggalt
- ggplot2
- ggpubr
- hrbrthemes
- palmerpenguins
- rstatix
- tidyr

## Minimal reproducible code
```r
#| label: fig-BasicPlot
#| fig-cap: "`TCGA` data"
#| out.width: "95%"
#| warning: false

# `TCGA` data
p <- ggplot(data_tcga, aes(x=gene, y=expression)) +
  geom_point() + 
  geom_segment( aes(x=gene, xend=gene, y=0, yend=expression)) +
  theme(axis.text.x = element_text(angle = 30,vjust = 0.85,hjust = 0.85))

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Ranking/Lollipop.html
