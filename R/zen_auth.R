


zen_auth <- function(key = "", secret = "") {
  # Once completed, this fn will allow for
  # automatic authentication.
  # For now, it's just as easy to add a token
  # to one's R profile to use the remaining endpoints
  stop("zen_auth is not yet implemented. ",
       "See zen_pat to use a Zenodo Personal Access Token for authentication")
}

#' Get Zenodo Personal Access Token (PAT)
#'
#' @description This will first check for R option \code{zenodo_token}. If that
#'   does not exist then the environment variable ZENODO_PAT will be checked.
#' @details You can make a new Zenodo Personal Access Token at
#'   \url{https://zenodo.org/account/settings/applications/}.
#' @export
zen_pat<-function () {
  pat=getOption('zenodo_token', default = Sys.getenv("ZENODO_PAT"))
  if (!isTRUE(nzchar(pat))) {
    return(NULL)
  }
  # Leave this for debugging purposes - probably turn off later.
  message("Using Zenodo PAT")
  pat
}
