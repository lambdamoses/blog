---
title: R blogs I follow
author: Lambda Moses
date: '2019-03-02'
slug: r-blogs-i-follow
tags: []
keywords:
  - tech
categories:
  - R
thumbnailImage: "img/Rlogo.png"
---

This page is about R resources. I also have [a list of resources about dialogues between science and religion](https://fromsystosys.netlify.com/2018/07/28/resources/).

One of my favorite aspects of R is the vibrant R community. A way to learn from the community - new tools, cool efficient tricks, something to note about data analysis - is reading blog posts. Actually, I learnt parallel programming in R entirely from blog posts. These are the R blogs I follow:

* [R-bloggers](https://www.r-bloggers.com): A collection of R blogs all over the internet. This is where I get updates and R news from a variety of blogs.
* [R views](https://rviews.rstudio.com): RStudio's community blog, aimed at R users. I really like the posts about 40 packages that made it to CRAN in the past month.
* [RStudio developers' blog](https://blog.rstudio.com)
* [Tensorflow for R](https://blogs.rstudio.com/tensorflow/): I like this blog, since first, finally we no longer have to learn Python for deep learning, and second, the articles on this blog are very well-written.
* [Variance Explained](http://varianceexplained.org) by David Robinson, chief data scientist of Data Camp.
* [Win-Vector blog](http://www.win-vector.com/blog/) by Win-Vector data science consulting.
* [rOpenSci](https://ropensci.org/blog/)
* [R Weekly](https://rweekly.org)
* [Dave Tang's blog](https://davetang.org/muse/): Bioinformatics blog with emphasis on R.
* [Data Science Plus](https://datascienceplus.com): Has tutorials on both R and Python.
* [Fronkonstin](https://fronkonstin.com): Using R to create mathematical aRt.
* [Data Imaginist](https://www.data-imaginist.com/): Blog of Thomas Lin Pedersen.

While my research made me a full time R user, actually I have never taken a class about R. Instead, I learnt R entirely on my own, thanks to the great resources from the R community available for free. These are some R books I find helpful freely available online:

* [R for Data Science](https://r4ds.had.co.nz): The official books for learning Tidyverse and some basics of R.
* [Efficient R Programming](https://bookdown.org/csgillespie/efficientR/)
* [Advanced R (2nd edition)](https://adv-r.hadley.nz): This is the book that will make quirks of R make sense. This book also has good introduction to functional programming, object oriented programming, metaprogramming, code optimization, and Rcpp. The first edition can be found [here](http://adv-r.had.co.nz). Hadley Wickham is also working on a book called R Internals, which is about R's interface to C; R itself is largely written in C.
* [Rcpp for Everyone](https://teuder.github.io/rcpp4everyone_en/): A more comprehensive guide to Rcpp, R's interface to C++. Rcpp allows us to source and call C++ functions directly from R, as if they were R functions. Since unvectorized R code is slow, when we really can't vectorize loops away or when parallelizing in R is still not fast enough, Rcpp comes to the rescue to remove the bottleneck in our code. 
* [Text Mining with R](https://www.tidytextmining.com): I don't do text mining for my research; I read this book just for fun. Here I see the power and expressiveness of the Tidyverse framework.
* [The `caret` Package](http://topepo.github.io/caret/index.html): `caret` is an R package providing a consistent interface to over 200 machine learning methods. This is the official book about `caret`.
* [What They Forgot to Teach You About R](https://whattheyforgot.org): This book is still work in progress, but the existing parts are already quite helpful for making our R life smoother.
* [Happy Git and GitHub for the useR](https://happygitwithr.com): Git is a version control system, and GitHub is a platform working with Git to share code online. BTW, one thing I really like about RStudio is the Git GUI.
* [Creating Websites with R Markdown](https://bookdown.org/yihui/blogdown/): `blogdown` is used to build websites straight out of RStudio with R Markdown. This makes integrating code into blog posts so much easier.
* [R Packages](http://r-pkgs.had.co.nz): Guide to the structure of R packages and writing documentations with `roxygen2`, along with some tips for getting packages to CRAN. Bioconductor has stricter requirements; see [the Bioconductor package guidelines](https://bioconductor.org/developers/package-guidelines/).

You can find more free R books on the [bookdown website](https://bookdown.org) (`bookdown` is an R package that lets you to write ebooks with R Markdown). Not all R packages have corresponding books or Data Camp or in person courses. Then we need to learn to use them on the fly by reading vignettes and documentations.
