# Split data into Type AD and Non AD, and de-identify for AI screening
split_for_ai <- function(df2) {
  pattern <- r"(A\.|B\.|C\.|D\.)"

  df_AD <- df2 |> filter(str_detect(Type, pattern))

  df_non_AD <- df2 |>
    filter(!str_detect(Type, pattern) | is.na(Type))

  df_AD_deid <- df_AD |>
    mutate(
      Patient = `S/N`,
      MRN = `S/N`
    )

  result_list <- list(
    type_AD = df_AD,
    type_AD_deid = df_AD_deid,
    non_AD = df_non_AD
  )

  return(result_list)
}
