#' Title
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
colnames_INS=function(x){
  library(dplyr)
  x=x %>%
    dplyr::rename("GPS Week"=V1) %>%
    dplyr::rename("GPS (Week Second)"=V2) %>%
    dplyr::rename("Longitude (deg)"=V3) %>%
    dplyr::rename("Latitude (deg)"=V4) %>%
    dplyr::rename("East Coordinates (m)"=V5) %>%
    dplyr::rename("North Coordinates (m)"=V6) %>%
    dplyr::rename("Height (m)"=V7) %>%
    dplyr::rename("East Velocity (m/s)"=V8) %>%
    dplyr::rename("North Velocity (m/s)"=V9) %>%
    dplyr::rename("Elevation Velocity (m/s)"=V10) %>%
    dplyr::rename("East Velocity Std.Dev. (m/s)"=V11) %>%
    dplyr::rename("North Velocity Std.Dev. (m/s)"=V12) %>%
    dplyr::rename("Elevation Velocity Std.Dev. (m/s)"=V13) %>%
    dplyr::rename("Pitch (deg)"=V14) %>%
    dplyr::rename("Roll (deg)"=V15) %>%
    dplyr::rename("Yaw (deg)"=V16) %>%
    dplyr::rename("Pitch Std.Dev. (deg)"=V17) %>%
    dplyr::rename("Roll Std.Dev. (deg)"=V18) %>%
    dplyr::rename("Yaw Std.Dev. (deg"=V19)
}





