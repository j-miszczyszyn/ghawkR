#' Title
#'
#' @param thin_value
#' @param x
#' @param algorithm
#' @param thin
#'
#' @return
#' @export
#'
#' @examples
merge_flights=function(x, algorithm, thin, thin_value){
  lista=list.files(x, full.names = TRUE,pattern = "\\.txt$")
  empty_to_fill=data.frame()
  for (i in 1:length(lista)) {
    file=ghawkR::read_export_file(lista[i])
    if(algorithm== "GNSS") {
      file = colnames_GNSS(file)
    } else if(algorithm== "INS") {
      file = colnames_INS(file)
    } else if(algorithm== "POS_Camera") {
      file = colnames_POS_Camera(file)
    } else if(algorithm== "POS") {
      file = colnames_POS(file)
    }else if(algorithm== "Trajectory") {
      file = colnames_Trajectory(file)
    }

    if (thin==TRUE) {
      file=thin_records(file, thin_value )
    }
    file$FLIGHT=i
    empty_to_fill=rbind(empty_to_fill,file)
  }
  return(empty_to_fill)
}
``
