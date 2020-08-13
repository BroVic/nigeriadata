#' Download Data on Nigeria
#'
#' @param item A character vector representing the kind of data to be downloaded.
#'
#' @import utils
#'
#' @export
download_nigeriadata <- function(item)
{
  if (!is.character(item))
    stop("'item' is expected to be a character vector")
  url <- .baseurl(item)
  tryCatch(
    error = function(e) conditionMessage(e),
    read.csv(url)
  )
}
