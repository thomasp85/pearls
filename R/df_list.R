#' @export
df_list <- function(...) {
  if (is.list(..1) && !is.data.frame(..1)) {
    x <- ..1
  } else {
    x <- list(...)
  }
  if (!all(vapply(x, inherits, logical(1), 'data.frame'))) {
    stop('A df_list can only contain data.frames', call. = FALSE)
  }
  class(x) <- c('df_list', class(x))
  x
}
#' @export
as_df_list <- function(x, ...) {
  UseMethod('as_df_list')
}
#' @export
as_df_list.df_list <- function(x, ...) x
#' @export
as_df_list.list <- function(x, ...) df_list(x)
# methods for grouped_tbl_df and data.frame as well

#' @export
as.list.df_list <- function(x, ...) {
  class(x) <- setdiff(class(x), 'df_list')
  x
}
