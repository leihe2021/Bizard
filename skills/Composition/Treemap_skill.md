# Skill: Treemap (R)

## Category
Composition

## When to use
A treemap, also known as a rectangular tree structure diagram, is composed of multiple nested rectangles of varying areas. The sum of the areas of all rectangles represents the overall data. The area of each smaller rectangle represents the proportion of each sub-item; the larger…

## Required R packages
- DOSE
- palmerpenguins
- tidyverse
- treemap

## Minimal reproducible code
```r
#| label: fig-Labelfill
#| fig-cap: "Color according to the label"
#| out.width: "95%"
#| warning: false

treemap(data_USArrests, # data
        index = "State", # Categorical variables
        vSize = "Murder", # Categorical variable corresponding data values
        vColor="State", # The corresponding columns of color depth, here the data size is used as the corresponding
        type = "index", # Color mapping method, including "index", "value", "comp", "dens", "depth", "categorical", "color", and "manual".
        title = 'Murder', # title
        border.col = "grey", # Border color
        border.lwds = 4, # Border line width
        fontsize.labels = 12, # Label size
        fontcolor.labels = 'red', # Label color
        align.labels = list(c("center", "center")), # Tag location
        fontface.labels = 2) # Tag fonts: 1, 2, 3, 4 represent normal, bold, italic, and bold italic fonts, respectively.
```

## Full tutorial
https://openbiox.github.io/Bizard/Composition/Treemap.html
