#' Title
#'
#' @param x
#' @param coords
#' @param remove
#'
#' @return
#' @export
#'
#' @examples
table_to_spatial=function(x, coords,remove){
  x=sf::st_as_sf(x, coords = coords, remove = remove)
}
