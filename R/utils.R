#' @export
h2o_start <- function() {
  res <- utils::capture.output(h2o:::with_no_h2o_progress(
    h2o::h2o.init()
  ), "output")
}

#' @export
h2o_running <- function(verbose = FALSE) {
  res <- try(h2o::h2o.clusterIsUp(), silent = TRUE)
  if (inherits(res, "try-error")) {
    if (verbose) {
      msg <- as.character(res)
      rlang::inform(msg)
    }
    res <- FALSE
  }
  res
}
