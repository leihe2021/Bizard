# Skill: China Map (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- RColorBrewer
- data.table
- ggplot2
- jsonlite

## Minimal reproducible code
```r
#| label: fig-1map-china
#| fig-cap: "China Map"
#| out.width: "95%"
#| fig-height: 6
#| fig-width: 8
#| warning: false
#| error: false
#| message: false

# China Map
p <- ggplot(dt_map, aes(x = long, y = lat, group = group, fill = Value)) +
  labs(fill = "Value") +
  geom_polygon() +
  geom_path() +
  coord_fixed() +
  scale_fill_gradientn(
    colours = colorRampPalette(rev(brewer.pal(11,"RdYlBu")))(500),
    na.value = "grey10",
    limits = c(0, max(dt_map$Value) * 1.2)) +
    ggtitle("China Map Plot") +
  theme_minimal()

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/100-map-china.html
