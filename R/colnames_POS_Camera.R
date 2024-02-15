#' Title
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
colnames_POS_Camera=function(x){
  x=x %>%
    library(dplyr)
    dplyr::rename("Img Name"=V1) %>%
    dplyr::rename("East Coordinates (m)"=V2) %>%
    dplyr::rename("North Coordinates (m)"=V3) %>%
    dplyr::rename("Height (m)"=V4) %>%
    dplyr::rename("Omega (deg)"=V5) %>%
    dplyr::rename("Phi (deg)"=V6) %>%
    dplyr::rename("Kappa (deg)"=V7)
}
