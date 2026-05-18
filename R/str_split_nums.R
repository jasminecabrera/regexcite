#' Splits a string and converts to numeric
#'
#' @param string A character vector with, at most, one element.
#' @inheritParams stringr::str_split
#'
#' @returns A character vector.
#'
#' @export
#'
#' @examples
#' str_split_nums("2,0,0,3", pattern = ",")
#'
#' # expect warning
#' str_split_nums("B,0,0", pattern = ",")

str_split_nums <- function(string, pattern, n = Inf){

  # input checks
  stopifnot(is.character(string), length(string) <= 1)

  # function
  if (length(string) == 1) {

    # produces warning if elements of string are not numeric
    as.numeric(stringr::str_split(string = string,
                                  pattern = pattern,
                                  n = n)[[1]])

  } else {
    character()}}
