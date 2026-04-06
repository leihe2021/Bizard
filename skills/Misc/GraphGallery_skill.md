# Skill: Graph Gallery (R)

## Category
Misc

## When to Use
👋 **Bizard** is a comprehensive repository of advanced visualization codes tailored for biomedical research. It currently includes approximately 750 graphics across more than 65 chart types. Below is the gallery for all graphics.

## Required R Packages
- crosstalk
- dplyr
- htmltools
- jsonlite
- reactable

## Minimal Reproducible Code
```r
library(reactable)
library(jsonlite)
library(dplyr)
library(crosstalk)
library(htmltools)

data <- read.csv("files/gallery_data.csv")
```

## Key Parameters
- `position`: Position adjustment (identity, dodge, stack, fill)
- `fill`: Maps a variable to fill color for group comparison
- `color`: Maps a variable to outline/point color

## Tips
- Adjust text size with `theme(text = element_text(size = 14))` for presentations
- See the full tutorial for additional customization options and advanced examples

## Full Tutorial
https://openbiox.github.io/Bizard/GraphGallery.html
