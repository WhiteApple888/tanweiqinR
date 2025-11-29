test_that("load_and_clean removes SDA/IPD and adds columns", {
  tmp <- tempfile(fileext = ".csv")
  tibble(
    `Patient Class` = c("OP", "IPD", "SDA"),
     Subtype = c(
       "(Re) Started Drug for Untreated Indication - Indication",
       "Dose or Frequency increased - Efficacy",
       "Stopped Drug because of duplicate therapy - Safety"
       ),
     Response = c("Accepted", "Rejected", NA)
    ) |>
    write_csv(tmp)

  out <- load_and_clean(tmp, "Jan-25")

  # SDA and IPD should be removed → only 1 row left
  expect_equal(nrow(out), 1)

  # Check Month column added
  expect_equal(out$Month[1], "Jan-25")

  # Check new columns exist
  expect_true("Type (checked)" %in% names(out))
  expect_true("Process Related Causes" %in% names(out))
  expect_true("Response (checked)" %in% names(out))
  expect_true("S/N" %in% names(out))
})