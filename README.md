
# ghawkR

<!-- badges: start -->
<!-- badges: end -->

The goal of ghawkR is to ...

## Installation

You can install the development version of ghawkR from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("j-miszczyszyn/ghawkR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
# library(ghawkR)
# x=Path to your file
# x= read.table("Lot_nr_1.txt")
# x=thin_records(x,100)
# x=colnames_Trajectory(x)
# 
# x=table_to_spatial(x, coords = c(2,3), remove=FALSE)
# plot_points_coord(x)

# x=Path to folder
# test=merge_flights(x, algorithm="Trajectory", thin=TRUE, thin_value = 100)
# test=table_to_spatial(test, coords = c(2,3), remove = FALSE)
# plot_points_coord_merged(test)
# plot(x=test$`East Coordinates (m)`, y=test$`North Coordinates (m)`, col=test$FLIGHT)

```

