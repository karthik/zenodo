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
#' @param deposition.id,file.id Zenodo ids for deposition and file (one or many)
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
#' @importFrom dplyr as_data_frame bind_rows
#' @examples
#' \dontrun{
#' # retrieve info for single file
#' zen_file_retrieve(29766, "d98a9e02-c9df-4e4a-b643-8f6f1d9eb2d5")
#'
#' # retrieve info for all files in current user's collections
#' # however this info is already in the data_frame returned by
#' # zen_collections() so this is not a particularly efficient strategy
#' my_files=with(zen_collections(), zen_file_retrieve(id, files.id))
#' }
zen_file_retrieve<-function(deposition.id, file.id, ...) {
  if(length(deposition.id)>1 || length(file.id)>1) {
    res=mapply(zen_file_retrieve, deposition.id, file.id, MoreArgs = list(...),
               SIMPLIFY = F)
    return(bind_rows(res))
  }
  path=paste0('api/deposit/depositions/',deposition.id,'/files/',file.id)
  response=zen_fetch(path, ...)
  as_data_frame(response)
}
