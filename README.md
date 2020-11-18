
<!-- README.md is generated from README.Rmd. Please edit that file -->

# IntDigitsCounter

<!-- badges: start -->

<!-- badges: end -->

The goal of IntDigitsCounter is to count numbers of integer digits.

## Installation

You can install the released version of IntDigitsCounter from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("IntDigitsCounter")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("shannelu/IntDigitsCounter")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(IntDigitsCounter)
IntDigitsCounter(c(0.123, 1, -245, 4308.99), na.rm = FALSE)
#> [1] 0 1 3 4
```
