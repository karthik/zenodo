
#' List Zenodo collections.
#'
#' List all depositions for the currently authenticated user. Collections
#' typically archive all outputs of a research project.
#' @param ... Additional arguments passed to \code{\link{zen_fetch}} to define
#'   request, authorisation or parsing options.
#' @export
#' @return a data.frame (with class \code{dplyr::tbl_df}) containing metadata
#'   about all existing collections for a user.
#' @seealso \code{\link{zen_fetch}}
#' @examples \dontrun{
#' my_collections <- zen_collections()
#' my_collections %>%
#'   select(metadata.title, metadata.upload_type, metadata.doi, files.filename)
#' }
zen_collections <- function(...) {
  request <- zen_fetch('api/deposit/depositions', ...)
  process_hitter_response(request)
}
