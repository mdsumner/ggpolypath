
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
data(maphome)

ggplot(maphome) + aes(x = x_, y = y_, group = branch_, fill = object_) +
  geom_polypath()
```
