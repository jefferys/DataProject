# DataProject.R - A DataProject class object

#' Create a new DataProject
#'
#' @return A DataProject object
#'
#' @examples
#' DataProject()
#' 
#' @export
DataProject <- function() {
    obj <- list()
    class(obj) <- c( "DataProject", class(obj))
    return(obj)
}
