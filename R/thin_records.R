#' Title
#'
#' @param x -table
#'        y - thin every Y-th row
#'
#' @return
#' @export
#'
#' @examples
thin_records <- function(x, y) {
  selected_rows = seq(1, nrow(x), y)
  return(x[selected_rows, ])
}
