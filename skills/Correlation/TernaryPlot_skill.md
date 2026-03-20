# Skill: Ternary chart (R)

## Category
Correlation

## When to use
A ternary chart is a type of chart used to display the proportional relationship between three variables. These three variables typically represent a certain component (such as chemical composition, species ratio, nutritional structure, etc.), and their sum is a constant, with th…

## Required R packages
- ggtern
- ggthemes

## Minimal reproducible code
```r
#| label: fig-1.1BasicPlot
#| fig-cap: "Basic Ternary Chart"
#| out.width: "95%"
#| warning: false
#| message: false
#| fig-width: 6
#| fig-height: 4
#| eval: false

# Basic Ternary Chart
p1_1 <- ggtern(data=data, aes(x=CK, y=NPK, z=NPKM)) +
  geom_mask() +
  geom_point(aes(size=size,color=Genus),alpha=0.8)
p1_1
```

## Full tutorial
https://openbiox.github.io/Bizard/Correlation/TernaryPlot.html
