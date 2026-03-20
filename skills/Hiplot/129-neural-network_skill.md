# Skill: Neural Network (R)

## Category
Hiplot

## When to use
::: callout-note
**Hiplot website**

## Required R packages
- NeuralNetTools
- data.table
- jsonlite
- nnet

## Minimal reproducible code
```r
#| label: fig-1network-igraph
#| fig-cap: "Neural Network"
#| out.width: "95%"
#| fig-height: 10
#| fig-width: 12
#| warning: false
#| error: false
#| message: false

# Neural Network
mod <- nnet(Y1 ~ X1 + X2 + X3, data = neuraldat, size = 10,
            maxint = 100, decay = 0)

# plot
par(mar = numeric(4))
plotnet(mod)
```

## Full tutorial
https://openbiox.github.io/Bizard/Hiplot/129-neural-network.html
