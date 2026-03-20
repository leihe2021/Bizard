# Skill: Rose Chart (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- data.table
- ggplot2
- jsonlite

## Minimal reproducible code
```r
#| label: fig-1rose-chart
#| fig-cap: "Rose Chart"
#| out.width: "95%"
#| fig-height: 6
#| fig-width: 6
#| warning: false
#| error: false
#| message: false

# Rose Chart
p <- ggplot(data, aes(x = Sample, y = Freq)) +
  geom_col(aes(fill = Group), width = 0.9, size = 0, alpha = 0.8) +
  coord_polar() +
  ggtitle("Rose Chart") +
  scale_fill_manual(values = c("#E64B35FF", "#4DBBD5FF")) +
  theme_bw() +
  theme(aspect.ratio = 1,
        axis.text.x = element_text(colour = "black"),
        axis.text.y = element_text(colour = "black"),
        legend.title = element_blank(),
        legend.position = "bottom",
        plot.title = element_text(hjust = 0.5))

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/157-rose-chart.html
