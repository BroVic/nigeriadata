#' Download Data on Nigeria
#'
#' @includeRmd inst/rmd/geodata.Rmd
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




#' @importFrom httr build_url
#' @importFrom httr parse_url
.baseurl <- function(key)
{
  stopifnot(is.character(key), length(key) == 1L)

  host <- "https://gis-a.ie.ehealthafrica.org"
  path <- "geoserver/eHA_db/ows"
  url <- parse_url(file.path(host, path, fsep = '/'))

  value <- .retrieveSearchTerm(key)
  queryString <- list(
    service = 'WFS',
    version = '1.0.0',
    request = 'GetFeature',
    typeName = paste('eHA_db', value, sep = ":"),
    outputFormat = 'csv'
  )
  url$query <- queryString
  build_url(url)
}



.retrieveSearchTerm <- function(key)
{
  stopifnot(is.character(key))
  tryCatch(
    all.data[[key]],
    error = function(e) {
      stop("This key is not available for processing query", call. = FALSE)
    }
  )
}
