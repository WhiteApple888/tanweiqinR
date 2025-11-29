\name{export_results}
\alias{export_results}
\title{Export Cleaned and Split Intervention Data to CSV Files}
\description{Export cleaned data and AI screening subsets into consistently named CSV
files. The function generates separate files for raw data, Type A to D data,
de-identified data for AI screening, and non-Type A to D data.}
\usage{
Step 1: load_and_clean (file, MMMYY)
Step 2: split_for_AI(df2)
Step 3: export_results(df2, list, MMMYY, prefix = "ivent")
Do not omit steps.
}
\arguments{
\item{df2}{A cleaned data frame produced by \code{load_and_clean}.}
\item{list}{A list returned by \code{split_for_AI}.}
\item{MMMYY}{A month-year label in the format "MMM-YY".}
\item{prefix}{A file name prefix for all exported CSVs.}
}
\value{
No return value. CSV files are written to the working directory.
}
\examples{
User only have to provide file, and month
Step 1: load_and_clean (file, MMMYY)
Step 2: split_for_AI(df2)
Step 3: export_results(df2, list, MMMYY, prefix = "ivent")
Do not omit steps.
}
