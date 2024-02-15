#' Title
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
colnames_Trajectory=function(x){
  library(dplyr)
  x=x %>%
    dplyr::rename("GPS (Week Second)"=V1) %>%
    dplyr::rename("East Coordinates (m)"=V2) %>%
    dplyr::rename("North Coordinates (m)"=V3) %>%
    dplyr::rename("Height (m)"=V4) %>%
    dplyr::rename("Roll (deg)"=V5) %>%
    dplyr::rename("Pitch (deg)"=V6) %>%
    dplyr::rename("Yaw (deg)"=V7)
}


