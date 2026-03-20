# Skill: Dendrogram (R)

## Category
Composition

## When to use
A dendrogram is a graphical representation of hierarchical relationships between objects. It is widely used in cluster analysis, especially hierarchical clustering, to visualize the similarity or distance between data points.

## Required R packages
- collapsibleTree
- dendextend
- ggraph
- igraph
- tidyverse

## Minimal reproducible code
```r
#| label: fig1dendrogram
#| fig-cap: "Tree diagram of hierarchical data"
#| out.width: "95%"
#| warning: false
#| message: false

ggraph(mygraph_unique, layout = 'dendrogram', circular = FALSE) + 
  geom_edge_diagonal() +
  geom_node_point() +
  theme_void()
```

## Full tutorial
https://openbiox.github.io/Bizard/Composition/Dendrogram.html
