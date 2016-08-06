
<!-- README.md is generated from README.Rmd. Please edit that file -->

------------------------------------------------------------------------

[![Travis-CI Build Status](https://travis-ci.org/mdsumner/ggpolypath.svg?branch=master)](https://travis-ci.org/mdsumner/ggpolypath) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/mdsumner/ggpolypath?branch=master&svg=true)](https://ci.appveyor.com/project/mdsumner/ggpolypath) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/ggpolypath)](https://cran.r-project.org/package=ggpolypath) [![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/ggpolypath)](http://www.r-pkg.org/pkg/ggpolypath) [![Coverage Status](https://img.shields.io/codecov/c/github/mdsumner/ggpolypath/master.svg)](https://codecov.io/github/mdsumner/ggpolypath?branch=master)

ggpolypath
----------

A `ggplot2` geom for polygons with holes.

Install
-------

``` r
## install from Github
devtools::install_github("mdsumner/ggpolypath")
```

Example
-------

``` r
library(ggpolypath)
#> Loading required package: ggplot2
data(maphome)

ggplot(maphome) + aes(x = x_, y = y_, group = branch_, fill = object_) +
  geom_polypath()
```

![](figure/README-unnamed-chunk-3-1.png)

The same example, but using the linked per-object metadata.

``` r
ggplot(merge(maphome, dathome[, c("object_", "name")])) + 
  aes(x = x_, y = y_, group = branch_, fill = name) + 
  geom_polypath()
```

![](figure/README-unnamed-chunk-4-1.png)

Gory details
------------

More examples, and more detail than you probably need can be found here:

<https://github.com/r-gris/polyggon/blob/master/README.md>
