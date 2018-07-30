---
title: Code rendering reprex 2
author: Lambda Moses
date: '2018-07-30'
slug: code-rendering-reprex-2
categories:
  - R
tags: []
---

See if the code rendering error is only in Rmd
```r
# Something
library(ggplot2)
```

For `ggplot2`
```r
foo <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point()
foo
```

The example that works
```r
# A proper comment
x <- seq(0,1,0.02)
x
```

```r
for (i in 1:10) {
  cat(i, "\n")
}
```
The code did render properly in markdown, except there's no code highlighting. Anyway, I don't care, since I do want to run my code. 