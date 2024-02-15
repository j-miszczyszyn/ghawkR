#' Title
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
colnames_GNSS=function(x){
  x=x %>%
    dplyr::rename("GPS Week"=V1) %>%
    dplyr::rename("GPS (Week Second)"=V2) %>%
    dplyr::rename("Longitude (deg)"=V3) %>%
    dplyr::rename("Latitude (deg)"=V4) %>%
    dplyr::rename("Height (m)"=V5) %>%
    dplyr::rename("East Position Std.Dev. (m)"=V6) %>%
    dplyr::rename("North Position Std.Dev. (m)"=V7) %>%
    dplyr::rename("Ellipsoid Height Std.Dev. (m)"=V8) %>%
    dplyr::rename("East Velocity (m/s)"=V9) %>%
    dplyr::rename("North Velocity (m/s)"=V10) %>%
    dplyr::rename("Elevation Velocity (m/s)"=V11) %>%
    dplyr::rename("East Velocity Std.Dev. (m/s)"=V12) %>%
    dplyr::rename("North Velocity Std.Dev. (m/s)"=V13) %>%
    dplyr::rename("Elevation Velocity Std.Dev. (m/s)"=V14) %>%
    dplyr::rename("Quaility Ratio"=V15)
}


