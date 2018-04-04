#' @export
count_rows <- function(x) {
  UseMethod('count_rows')
}
#' @export
count_columns <- function(x) {
  UseMethod('count_columns')
}
#' @export
count_rows.df_list <- function(x) count_rows_c(x)
#' @export
count_rows.default <- function(x) count_rows_c(as_df_list(x))
#' @export
count_columns.df_list <- function(x) count_columns_c(x)
#' @export
count_columns.default <- function(x) count_columns_c(as_df_list(x))
