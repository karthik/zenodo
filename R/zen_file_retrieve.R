# Description	Retrieve a single deposition file.
# URL	https://zenodo.org/api/deposit/depositions/:id/files/:file_id
# Method	GET
# URL parameters
# Required:
# id: Deposition identifier
# file_id: Deposition file identifier
# Success response
# Code: 200 OK
# Body: a deposition file resource.
# Error response	See HTTP status codes (400 and 500 series errors) and error responses.

#' Retrieve file description for given deposition and file id
#'
#' @param deposition.id,file.id Zenodo ids for deposition and file
#' @inheritParams zen_collections
#' @return A data_frame with columns
#' \itemize{
#'
#' \item id
#' \item checksum
#' \item filesize
#' \item filename
#' }
#' @export
#' @importFrom dplyr as_data_frame
zen_file_retrieve<-function(deposition.id, file.id, ...) {
  path=paste0('api/deposit/depositions/',deposition.id,'/files/',file.id)
  response=zen_fetch(path, ...)
  as_data_frame(response)
}
