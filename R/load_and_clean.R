load_and_clean <- function(file, MMMYY) {
  df <- read_csv(file, show_col_types = FALSE)

  df2 <- df |>
    filter(!`Patient Class` %in% c("SDA", "IPD")) |>
    mutate(
      `Type (checked)` = NA,
      `Subtype (checked)` = NA,
      `Process Related Causes` = NA,
      `Response (checked)` = NA,
      Month = MMMYY,
      `S/N` = row_number()
    ) |>
    relocate(
      `Type (checked)`, `Subtype (checked)`, `Process Related Causes`,
      .after = Subtype
    ) |>
    relocate(`Response (checked)`, .after = Response)

  return (df2)
}