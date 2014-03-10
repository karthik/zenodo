

zen_auth <- function(key = getOption("zenodo_key")) {
	assert_that(!is.null(key))
	browser()
	api_url <- paste0("https://zenodo.org/api/deposit/depositions/?apikey=", key)
	args <- compact(as.list(c(apikey = key)))
	results <- GET(api_url)
}

zen_auth()