get_base_dir <- function(){
  "D:\\projects\\hidap2\\xdata"
}

#' Fieldbook Sites path
#'
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_sites <- function() {
  file.path(get_base_dir(), "table_sites.rda")
}


#' Fieldbook crops path
#'
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_crops <- function(){
  file.path(get_base_dir(), "table_crops.rda")
}


#' Breeding program data path
#'
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_programs <- function(){
  file.path(get_base_dir(), "table_programs.rda")
}

#' Breeding program data path
#'
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_program_stage <- function(){
  file.path(get_base_dir(), "table_program_stages.rda")
}

#' Path to lists of plant materials
#'
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_material_lists <- function(){
  file.path(get_base_dir(), "material_lists")
}


#' Dictionary path
#'
#' @param crop string
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_dictionary <- function(crop = NULL) {
  if ( is.null(crop) ) return( NULL )
  fp <- file.path(get_base_dir(), crop, "dictionary", paste0("table_dictionary_", crop, ".rda"))
  if ( !file.exists(fp) ) dir.create(fp, recursive = TRUE)
  fp
}
