
#' List Zenodo products
#'
#' List all depositions for the currently authenticated user.
#' @param acces_token Your Zenodo access token
#' @export
zen_collections <- function(access_token = getOption('zenodo_token')) {
	dir_path <- "https://zenodo.org/api/deposit/depositions"
	args <- as.list(c(access_token = access_token))
	results <- httr::GET(dir_path, query = args)
	request <- httr::content(results)
	process_hitter_response(request)
}


#' Function abstracts out some standard functionality necessary to 
#' handle \code{httr} responses.
#' @noRd 
#' @keywords Internal
process_hitter_response <- function(response) {
	res <- lapply(response, function(s) data.frame(t(unlist(s))))
	# This could be improved so I don't end up relying on two
	# libraries to do the job.
	dplyr::tbl_df(data.table::rbindlist(res, fill = TRUE))
}