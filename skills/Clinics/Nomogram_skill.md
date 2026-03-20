# Skill: Nomogram (R)

## Category
Clinics

## When to use
Simply put, a nomogram graphically displays the results of logistic regression or Cox regression. It uses the regression coefficient of each independent variable to develop a scoring criteria, assigning a score to each independent variable value. A total score is then calculated…

## Required R packages
- readr
- regplot
- rms
- survival

## Minimal reproducible code
```r
#| label: fig-1.1BasicNomogram
#| fig-cap: "Basic Nomogram"
#| out.width: "95%"
#| warning: false
#| message: false
#| fig-width: 10
#| fig-height: 5

# Basic Nomogram
dd=datadist(LIHC)
options(datadist="dd")
## Build a logist model and draw a nomogram
f1 <- lrm(status ~ age + gender + stage , data =  LIHC)
nom <- nomogram(f1, fun=plogis, lp=F, funlabel="Risk")
plot(nom)
```

## Full tutorial
https://openbiox.github.io/Bizard/Clinics/Nomogram.html
