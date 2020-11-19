
<!-- README.md is generated from README.Rmd. Please edit that file -->

# IntDigitsCounter

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of IntDigitsCounter is to count numbers of integer digits.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

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

## Development

*Show the exact code used from usethis or devtools to implement the
package component:*

``` r
# Create package
devtools::create_package()

# Create an associated repo on Github
usethis::use_github()

# Make a R script
usethis::use_r()

# Load a package
devtools::load_all()

# Check the package intact
devtools::check()

# Add a license
usethis::use_mit_license("Shanny Lu")

# Update documentation
devtools::document()

# install package
devtools::install()

# Create tests for package and test them
usethis::use_testthat()
usethis::use_test("IntDigitsCounter")
devtools::test()

# Indicates dependencies
usethis::use_package("purrr")

# Add a package README and render it
usethis::use_readme_rmd()
devtools::build_readme()

# Build all vignettes
devtools::build_vignettes()

# Add a code of conduct
usethis::use_code_of_conduct()

# Make a package website
#install.packages('pkgdown')
usethis::use_pkgdown()
pkgdown::build_site()

# Activate with GitHub Pages
usethis::use_github_action("pkgdown")

# Add to the Changelog
usethis::use_news_md()

# Add a badge
usethis::use_lifecycle_badge("Experimental")
```

*Describe any manual work done with files:*

  - Write two functions in two separate files, called
    DigitCounter\_single.R and IntDigitsCounter.R

  - Edit the DESCRIPTION file.

  - Document two functions based on roxygen skeleton.

  - Add test functions in tests/testthat/test-IntDigitsCounter.R

  - Modify the source code of my function so that functions from other
    packages are called appropriately (e.g. using ::)

  - Modify README.md by briefly explaining how I made each part of my R
    package.

  - Modify Vignettes/IntDigitsCounter.Rmd to make a short vignette for
    my package.

  - Modify \_pkgdown.yml when making a package website to give some
    basic package information.

  - Modify NEWS.md to describe the features of package in current
    version.
