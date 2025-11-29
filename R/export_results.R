export_results <- function(df2, list, MMMYY, prefix = "ivent") {

  month_fmt <- str_replace_all(MMMYY, "-", "20")
  file_prefix <- paste0(prefix, month_fmt)

  write_csv(df2, paste0(file_prefix, "_Raw.csv"))
  write_csv(list$type_AD, paste0(file_prefix, "_Raw - Type A to D.csv"))
  write_csv(list$type_AD_deid, paste0(file_prefix, "_Raw - Type A to D - For Chun Wei.csv"))
  write_csv(list$non_AD, paste0(file_prefix, "_Raw - Non-type A to D.csv"))
}