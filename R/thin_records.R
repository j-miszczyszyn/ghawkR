#' Title
#'
#' @param x -table
#'        y - thin every Y-th row
#'
#' @return
#' @export
#'
#' @examples
thin_records=function(x,y){
  x=seq(1, nrow(x), y)
  }
