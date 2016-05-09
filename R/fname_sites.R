#' Base path
#'
#' @author Reinhard Simon
#' @return character file.path
#' @export
get_base_dir <- function(){
  file.path(getwd(), "xdata")
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

#' Fieldbook crops path
#'
#' @param crop a crop name
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_fieldbooks <- function(crop){
  file.path(get_base_dir(), crop, "fieldbooks")
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
#' @param crop character a crop
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_material_lists <- function(crop = NULL){
  if(is.null(crop)) {
    lf  = list.files(get_base_dir(), recursive = TRUE, full.names = TRUE)
    lf = lf[stringr::str_detect(lf, "material_lists")]
    dn = unique(dirname(lf))
    return(dn)
  }
  file.path(get_base_dir(), crop, "material_lists")
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
  #if ( !file.exists(fp) ) file.create(fp, recursive = TRUE)
  fp
}

#' Module path
#'
#' @param crop string
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_module <- function(crop = NULL) {
  if ( is.null(crop) ) return( NULL )
  fp <- file.path(get_base_dir(), crop, "dictionary", paste0("table_module_", crop, ".rda"))
  fp
}

#' Cross marker path
#'
#' @param crop string
#' @author Reinhard Simon
#' @return character file.path
#' @export
fname_cross_marker <- function(crop = NULL) {
  if ( is.null(crop) ) return( NULL )
  fp <- file.path(get_base_dir(), crop, "cross_marker")
  fp
}


