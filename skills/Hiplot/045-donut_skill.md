# Skill: Donut (R)

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
#| label: fig-1Donut
#| fig-cap: "Donut"
#| out.width: "95%"
#| fig-height: 4
#| fig-width: 5
#| warning: false
#| message: false

# Donut
p <- ggplot(data, aes_(ymax = as.name("ymax"), ymin = as.name("ymin"), 
                       xmax = 4, xmin = 3, fill = as.name(colnames(data)[1]))) +
  geom_rect() +
  geom_text(x = 5 + (4 - 5) / 3,
            aes(y = labelPosition, label = label), size = 4) +
  coord_polar(theta = "y") +
  xlim(c(2, 5)) +
  scale_fill_manual(values = c("#00468BCC","#ED0000CC","#42B540CC","#0099B4CC")) +
  ggtitle("Donut Plot") +
  theme_void() +
  theme(plot.title = element_text(hjust = 0.5),
        legend.position = "none")

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/045-donut.html
