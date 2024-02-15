#' Title
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
plot_points_coord=function(x){
  plot(sf::st_geometry(x))
}
