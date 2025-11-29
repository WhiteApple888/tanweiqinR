library(tidyverse)
library(cleanIVENT)

while (TRUE) {
  file <-readline("Input File Name: ")
  if (file.exists(file) && endsWith(tolower(file), ".csv")) {
    break
  }
  else {
    message("Please input valid file name or relocate file to existing directory.")
  }
}

MMMYY <- readline("Input MMM-YY: ")

# start_time <-Sys.time()

df2 <- load_and_clean(file, MMMYY)
list <- split_for_ai(df2)
export_results(df2, list, MMMYY)

end_time <- Sys.time()
# elapsed_time <- end_time - start_time
# print(elapsed_time)