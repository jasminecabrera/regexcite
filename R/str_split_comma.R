#' Split a String by Commas
#'
#' @param string A character vector with, at most, one element.
#' @inheritParams stringr::str_split
#'
#' @returns A list
#' @export
#'
#' @examples
#' str_split_comma("j,a,s")

str_split_comma <- function(string, n = Inf){

  # input checks
  stopifnot(is.character(string), length(string) <= 1)

  # function
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = ",", n = n)[[1]]
  } else {
    character()}}
