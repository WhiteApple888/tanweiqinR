\name{load_and_clean}
\alias{load_and_clean}
\title{First Round of Loading and Cleaning Intervention Data}
\description{Load a CSV file containing intervention data, remove patient classes that
are not needed, add new columns required for AI screening, and apply a consistent formatting structure}
\usage{
Step 1: load_and_clean (file, MMMYY)
Step 2: split_for_AI(df2)
Step 3: export_results(df2, list, MMMYY, prefix = "ivent")
Do not omit steps.
}
\arguments{
\item{file}{Path to the CSV file to read.}
\item{MMMYY}{A month-year label in the format "MMM-YY".}
}
\value{
A string representation of a duck saying the given phrase.
}
\examples{
User only have to provide file, and month
Step 1: load_and_clean (file, MMMYY)
Step 2: split_for_AI(df2)
Step 3: export_results(df2, list, MMMYY, prefix = "ivent")
Do not omit steps.
}
