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

