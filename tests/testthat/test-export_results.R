test_that("export_results writes output files", {
  # Dummy data
  df1 <- tibble(Type = "A.", `S/N` = 1)
  df2 <- tibble(Type = "B.", `S/N` = 1)
  df3 <- tibble(Type = "c.", `S/N` = 1)
  df4 <- tibble(Type = "F.", `S/N` = 1)


  list <- list(
    type_AD = df1,
    type_AD_deid = df3,
    non_AD = df4
  )

  # Create a temp prefix so we do not clutter the folder
  prefix <- tempfile()

  export_results(df2, list, "Jan-25", prefix = prefix)

  # The 4 expected files must exist
  expect_true(file.exists(paste0(prefix, "Jan2025_Raw.csv")))
  expect_true(file.exists(paste0(prefix, "Jan2025_Raw - Type A to D.csv")))
  expect_true(file.exists(paste0(prefix, "Jan2025_Raw - Type A to D - For Chun Wei.csv")))
  expect_true(file.exists(paste0(prefix, "Jan2025_Raw - Non-type A to D.csv")))
})