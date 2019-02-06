---
title: "README"
output: html_document
---

# ggplot2 theme
A package that provides a quick way to create clean figures and lots of customaization parameters.

```{r}

# devtools::install_github("soohyuna/themesoo")
library(themesoo)
library(ggplot2)
```


```{r}

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point() +
  facet_wrap(~Species) +
  theme_soo()
  
```

