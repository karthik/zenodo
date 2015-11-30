
#' List Zenodo collections.
#'
#' List all depositions for the currently authenticated user. Collections
#' typically archive all outputs of a research project.
#' @template access_token
#' @export
#' @examples \dontrun{
#' my_collections <- zen_collections()
#' }
zen_collections <- function(access_token = zen_pat()) {
  dir_path <- "https://zenodo.org/api/deposit/depositions"
  args <- as.list(c(access_token = access_token))
  results <- httr::GET(dir_path, query = args)
  request <- httr::content(results)
  process_hitter_response(request)
}


