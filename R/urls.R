#' @importFrom httr build_url
#' @importFrom httr parse_url
.baseurl <- function(key)
{
  stopifnot(is.character(key), length(id) == 1L)

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
