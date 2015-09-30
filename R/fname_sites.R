#' Fieldbook Sites path
#'
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_sites <- function() {
  file.path("xdata", "table_sites.rda")
}

#' Fieldbook crops path
#'
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_crops <- function(){
  file.path("xdata", "table_crops.rda")
}


#' Ontology path
#'
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_ontology <- function() {
  file.path("xdata", "dictionary")
}
