test_that("split_for_AI splits A–D correctly", {
  df2 <- tibble(
    Type = c("A.", "B.", "C.", "D.", "E.", "F.", NA),
    `S/N` = 1:7
  )

  # Split to return result as a list
  result <- split_for_ai(df2)

  # Index into list with $ or [[]] to check A-D should be in Type A-D dataframe
  expect_equal(nrow(result$type_AD), 4)

  # Index into list with $ or [[]] to check E, F and NA go to non-AD dataframe
  expect_equal(nrow(result$non_AD), 3)

  # De-identification should replace Patient and MRN with S/N
  expect_equal(result$type_AD_deid$Patient[1], result$type_AD_deid$`S/N`[1])
  expect_equal(result$type_AD_deid$MRN[1], result$type_AD_deid$`S/N`[1])
})