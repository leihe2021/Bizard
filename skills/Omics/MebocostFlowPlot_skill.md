# Skill: MEBOCOST Metabolic Flow Plot (R)

## Category
Omics

## When to use
The MEBOCOST Metabolic Flow Plot (流图) is an innovative visualization developed within the **MEBOCOST** (Metabolite-mediated Cell Communication Prediction) framework. It depicts metabolite-mediated intercellular communication by rendering directed flow arrows between cell types, w…

## Required R packages
- MEBOCOST
- devtools
- dplyr
- ggplot2
- ggraph
- igraph
- patchwork
- scales
- tidygraph

## Minimal reproducible code
```r
#| label: fig-1-flow-basic
#| fig-cap: "Basic MEBOCOST Metabolic Flow Plot"
#| out.width: "85%"

# Build graph object
g_basic <- graph_from_data_frame(
  d        = agg_comm %>% rename(weight = total_score),
  directed = TRUE,
  vertices = data.frame(name = unique(c(agg_comm$sender, agg_comm$receiver)))
)

set.seed(42)
p1 <- ggraph(g_basic, layout = "circle") +
  geom_edge_arc(
    aes(width = weight, alpha = weight),
    arrow       = arrow(length = unit(3, "mm"), type = "closed"),
    end_cap     = circle(6, "mm"),
    start_cap   = circle(6, "mm"),
    color       = "#3a86ff",
    curvature   = 0.2
  ) +
  geom_node_point(size = 12, color = "#ffbe0b", shape = 21,
                  fill = "#fb5607", stroke = 1.5) +
  geom_node_label(aes(label = name), repel = FALSE, size = 3.2,
                  fontface = "bold", color = "white",
                  fill = NA, label.size = 0) +
  scale_edge_width_continuous(range = c(0.5, 4), name = "Total Score") +
  scale_edge_alpha_continuous(range = c(0.3, 1), guide = "none") +
  labs(
    title    = "Metabolic Cell-Cell Communication Flow",
    subtitle = "Arrow width = aggregated communication score"
  ) +
  theme_graph(base_family = "sans") +
  theme(
    plot.title    = element_text(size = 14, face = "bold", hjust = 0.5),
    plot.subtitle = element_text(size = 10, hjust = 0.5),
    legend.position = "bottom"
  )

p1
```

## Full tutorial
https://openbiox.github.io/Bizard/Omics/MebocostFlowPlot.html
