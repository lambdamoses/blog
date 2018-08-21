---
title: My Favorite and Least Favorite Aspects of R
author: Lambda Moses
date: '2018-08-12'
slug: my-favorite-and-least-favorite-aspects-of-r
categories:
  - R
tags: []
thumbnailImage: "img/Rlogo.png"
coverImage: https://res.cloudinary.com/lambdamoses/image/upload/v1534202996/Clifford2.png
coverMeta: out
---

In September 2015, as I started working in a lab that requires bioinformatics skills, I made a new friend whose name is R. Before then, the last time I programmed was in 2007 or 2008, in C, and I didn't do well in it. Then, R has become my _de facto_ mother tongue in programming. Three years later, I'm on my way of developing a new R package for spatial transcriptomics[^1], and I have fixed bugs in other bioinformatics packages. I still have a long way to go to improve my R skills and deepen my understanding of R, but I can't wait to reflect on my friendship with R so far.

## The Best of R
Here are my favorite aspects of R:

The Comprehensive R Archive Network (CRAN) and Bioconductor. I can find an R package for pretty much everything I need in data analysis, and many of the cutting edge bioinformatics tools are written in R. In addition, there're some great packages currently only on GitHub and not yet on CRAN or Bioconductor, such as `gganimate` and `loomR`.

The R community. There're helpful people who answer our burning questions on Stack Overflow. Moreover, those cool packages are all contributed free of charge by the community, and in return, members of the community get to use lots of cool packages for free. There're also many great online books and tutorials that are free, such as Hadley Wickham's R for Data Science. I like this kind of open and collaborative culture. Moreover, the R community is interdisciplinary, and consists of not only statisticians and data scientists, but also sociologists, geologists, psychologists, physicians, biologists, and so on who need to analyze data. Bioinformatics has absorbed a lot from other fields, from the good old principal component analysis (PCA) to how the famous `Seurat` package in single cell RNA-seq used a technique from time series to align multiple datasets.

The RStudio integrated development environment (IDE). I like how I can see what's in the environment, the files I have, and help pages in one place. RStudio also works seamlessly with other packages developed by the RStudio company, such as `rmarkdown`, `shiny`, `testthat`, and `devtools`, by providing shortcuts and easy to use buttons and panes for those packages. Plus those packages are great. I also really like the git panel, which saves a lot of thinking needed to use git from the command line. What's even cooler, we can make slides, write books, and build websites within RStudio; those are very helpful to communicate results of our data analysis. Now I use RStudio instead of Microsoft Word as the text editor, and this blog itself is made with `blogdown`, with posts written in RStudio. While I can use Jupyter notebook for R (and I have done so before), I prefer R notebook, and one of the reasons is the other stuff in RStudio.

Tidyverse. It was said that R has a steep learning curve for beginners, and this was the case for me back in 2016. In 2017, I finally got comfortable with wrangling data with base R, but then I switched to the Tidyverse. It's so easy to learn and so intuitive that I picked it up within a month, so no more steep learning curve.

The RStudio company. I just mentioned packages like Tidyverse, `rmarkdown`, `shiny`, `blogdown`, `bookdown`, and `devtools`. There're other packages I like, such as `roxygen2` and `keras` (I meaan the R package, not the Python package), also developed by RStudio. Using `roxygen2` to write documentations feels just like when I write casual comments to explain what my functions do; almost no LATEX is required. 

Metaprogramming. This is what made the nice tidyeval, in which we can directly write column names without quoting, possible. This is also what made `shiny` nice; `shiny` allows us to write `html` in R style, a style that is more intuitive to R programmers. 

R's flexibility. This allows users to implement nice features for R that is absent in base R. For instance, say why do Python and MATLAB allow something like `x, y = vec`, where `vec` has 2 elements and this automatically unpacks the elements of `vec` into `x` and `y`, but not R? No problem; a recent package called `zeallot` implemented this feature. R's flexibility is also what made formulas and `ggplot2` possible. R doesn't inherently support interactive outputs? No problem, we've got `shiny`, which looks interactive while doing everything in R's way. It's also convenient when different data types can be converted easily.

Interoperability. What if there's a cool Python package that does not have equivalences in R? No problem, we've got the package `reticulate`, which calls Python from R using R-like syntax. What if a colleague is using closed source software such as SAS? No problem, the package `plumber` allows us to write web APIs of our R code that can be used from any platform, the the `haven` package nicely deals with file formats of SAS. There're also R packages that allow us to call MATLAB and Julia from R. And there's the famous `Rcpp` that calls C++ functions from R and makes cool C++ libraries available to R users. As R is built on top of C, R comes with a C API. It's also possible to call Fortran from R; I don't really know how to do it, but I know that it's possible since I have used R packages that have Fortran dependencies.

Functional programming. R is a functional programming language. Functional programming is the part of Hadley Wickham's Advanced R that I enjoyed the most. It's just cool to pass functions as arguments, write functions that return functions, and write functions that modify behaviors of functions. I also find R's function-centric style of object oriented programming more intuitive in many cases than C++'s style. In R, methods belong to functions rather than objects (for S3 and S4, which are the most commonly used, but this is not the case for R6). It's nice that I can implement new methods for classes from packages I often use, such as `Seurat`. This is kind of like a function is a service, and whether a function has a method for a class is like whether that service is provided for different kinds of customers, such as whether a restaurant has vegetarian dishes. C++'s object oriented programming is more like the class is something like a phone, which has methods like texting and calling. At least in the case of single cell RNA-seq, it's more intuitive to think about services provided to those datasets (like in R) than those datasets having some special powers (like in C++). That said, I may be biased, since I'm not experienced enough with C++ and Python, in which methods belong to classes. 

Culture for reproducible research. Honestly I really think I should work on this. We have the cool organization rOpenSci, and packages like `rmarkdown`, `knitr`, and `workflowr` that help to make research reproducible.

Documentations. Functions are usually very well-explained and have examples. The C++ linear algebra library Eigen has such bad documentation that I just gave up when trying to learn to use it; that's why I use Armadillo.

The built-in statistics functions. R is built by statisticians, for statisticians, so of course it has good built-in statistics functionality. 

Vectorization. So sick of thinking about how to write loops!

## The worst of R
Here are my least favorite aspects of R:

So slow! R, as a high level interpreted language, is pretty slow. Equivalent C++ code can often speed things up dozens of times. However, the R community has worked on improving R's performance. For instance, starting from R 3.4, functions are by default byte compiled, which makes them several times faster than if they're not byte compiled. Starting from R 3.5, packages are also by default byte compiled. Moreover, we've got `Rcpp`, which makes C++ look more like R, so easier to use by R users. We've also got powerful C++ libraries, such as the great Boost library, accessible from the R package `BH`, and the linear algebra libraries Eigen (`RcppEigen`) and Armadillo (`RcppArmadillo`). I really like Armadillo thanks to its documentation. The `foreach` and `parallel` packages also make parallel computing easy for R users; this can significantly speed up code when there're multiple cores. So yeah, with good coding practice (e.g. don't grow vectors, do vectorize, and etc.) and those tools, we can bypass the speed limit of R. Anyway, at present, when used well, R is fast enough for my purposes.

Everything is loaded into memory. This is becoming less and less practical as single cell RNA-seq datasets are getting larger and larger. However, there're already many ways to bypass this obstacle, such as `hdf5r` and `rhdf5`, R interfaces to the C library `hdf5`, which allow us to manipulate data on disk; only part of the data is loaded into memory and operations are done piecemeal. There's also `sparklyr`, which allows us to use the nice `dplyr` syntax to manipulate big data on Spark. There're also packages like `bigmemory`, `DelayedMemoryStats`, and etc. that make life easier when dealing with data that don't fit into memory. That said, there's a bit of learning curve, and before getting to know those package, I have tried to foolishly load large datasets into memory, causing R to crash.

R is too flexible. Sometimes it's hard to predict the output especially when matrices and data frames with only one columns are automatically converted to vectors, when data types are so casually converted, when something somehow returns a vector while you expect a scalar, and when there're objects of length 0, unless you know R inside out and use some not so well-known techniques that prevent those from happening, such as `drop = FALSE` and `vapply`. C++'s rigidity regarding data types can prevent those problems from the beginning, but R's flexibility is often convenient.

Syntax is often inconsistent across packages, so I have to waste some time trying to learn new syntaxes. This isn't a problem within the Tidyverse, but look at the myriads of machine learning packages, and see how their syntaxes are different. That why Max Kuhn wrote the `caret` package, to make syntax consistent for over 200 machine learning packages. 

We need more computer science professionals. When I read source code of packages to better understand how they work, I'm often so appalled by their authors' poor programming skills. Jenny Bryan said in her 2018 UseR! presentation that computer scientists and engineers tend less to use R, while those in natural sciences, social sciences, and (of course) statistics tend more to use R. We really need more computer science professionals, at least to make R run faster. Some people with a computer science background may find R weird, though this is not a problem to me. I remember back in a rotation, an older graduate student said he immediately quit R as soon as he saw that stupid arrow. Anyway, I'm perfectly fine with using `<-`. Do you know that there's also `->` in R? Well, English speakers may find Arabic weird in that Arabic has declension and is written from right to left, but this doesn't mean that Arabic is not an expressive language that has great literature. BTW, I just found out that there's a programming language entirely in Arabic script called [Qalb (قلب)](http://nas.sr/قلب/), and just like R, it's a functional programming language!

_About the cover image: A long time ago, when I was new to `Rcpp`, I read a blog post about using R to make beautiful plots of the [Clifford attractor](https://fronkonstin.com/2017/11/07/drawing-10-million-points-with-ggplot-clifford-attractors/), and tried it out with `Rcpp`. This is one of the images I produced, using the parameters in that blog post. I plotted 10 million points by `ggplot2`; there were no problems at all._

[^1]: Single cell RNA-seq takes individual cells out of their spatial contexts in order to do the sequencing. Spatial transcriptomics aims to preserve the spatial contexts.