# Skill: Violin Plot (R)

## Category
Distribution

## When to use
A violin plot combines elements of a density plot and a box plot to visualize data distribution. It displays key statistical information, including the median, quartiles, minimum, and maximum values. Violin plots are particularly useful for comparing distributions across differen…

## Required R packages
- dplyr
- forcats
- gghalves
- ggplot2
- ggpubr
- ggstatsplot
- hrbrthemes
- palmerpenguins
- readr
- tidyr

## Minimal reproducible code
```r
#| label: fig-1.1BasicViolin
#| fig-cap: "Basic Violin Plot"
#| out.width: "95%"
#| warning: false

# Basic Violin Plot
p <- ggplot(data, aes(x=name, y=value, fill=name)) + 
  geom_violin()

p
```

## Full tutorial
https://openbiox.github.io/Bizard/Distribution/ViolinPlot.html
