
# Description	Create a new deposition resource.
# URL	https://zenodo.org/api/deposit/depositions
# Method	POST
# Request headers	Content-Type: application/json
# Scopes	deposit:write
# Success response
# Code: 201 Created
# Body: a deposition resource.

#' Create a collection on Zenodo
#'
#' @param collection_name Name of a new collection to be created on Zenodo
#' @template access_token
#' @export
zen_create <- function(collection_name = NULL, access_token = getOption('zenodo_token')) {
  assert_that(!is.null(collection_name)) # no empty collection
  # TODO: Check to see if collection exists
  create_url <- "https://zenodo.org/api/deposit/depositions"
  response <- POST()
  results <- content(response)
  results
}
