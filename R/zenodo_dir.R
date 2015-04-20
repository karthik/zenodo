
#' List Zenodo products
#'
#' @param acces_token Your Zenodo access token
#' @export
zen_dir <- function(access_token = getOption('zenodo_token')) {
	dir_path <- "https://zenodo.org/api/deposit/depositions"
	args <- as.list(c(access_token = access_token))
	results <- httr::GET(dir_path, query = args)
	x <- httr::content(results)
	res <- lapply(x, function(s) data.frame(t(unlist(s))))
	dplyr::tbl_df(data.table::rbindlist(res, fill = TRUE))
}
