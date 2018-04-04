#include <Rcpp.h>

using namespace Rcpp;

//[[Rcpp::export]]
IntegerVector count_rows_c(ListOf<DataFrame> list_df) {
  IntegerVector res(list_df.size());
  for(int i = 0; i < list_df.size(); ++i) {
    res[i] = list_df[i].nrow();
  }
  return res;
}
//[[Rcpp::export]]
IntegerVector count_columns_c(ListOf<DataFrame> list_df) {
  IntegerVector res(list_df.size());
  for(int i = 0; i < list_df.size(); ++i) {
    res[i] = list_df[i].ncol();
  }
  return res;
}
