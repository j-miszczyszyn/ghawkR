#' Title
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
colnames_POS=function(x){
  x=x %>%
    library(dplyr)
    dplyr::rename("GPS Week"=V1) %>%
    dplyr::rename("GPS (Week Second)"=V2) %>%
    dplyr::rename("ECEF X Coordinates (m)"=V3) %>%
    dplyr::rename("ECEF Y Coordinates (m)"=V4) %>%
    dplyr::rename("ECEF Z Coordinates (m)"=V5) %>%
    dplyr::rename("East Velocity (m/s)"=V6) %>%
    dplyr::rename("North Velocity (m/s)"=V8) %>%
    dplyr::rename("Elevation Velocity (m/s)"=V9) %>%
    dplyr::rename("Pitch (deg)"=V10) %>%
    dplyr::rename("Roll (deg)"=V11) %>%
    dplyr::rename("Yaw (deg)"=V12)

}










