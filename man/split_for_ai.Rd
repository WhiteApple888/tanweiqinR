\name{split_for_AI}
\alias{split_for_AI}
\title{Split Cleaned Intervention Data for AI}
\description{Split the cleaned intervention data into two groups: Type A--D entries eligible
for AI screening, and all other entries. Type A--D entries are also de-identified by replacing identifiers with their serial numbers}
\usage{
Step 1: load_and_clean (file, MMMYY)
Step 2: split_for_AI(df2)
Step 3: export_results(df2, list, MMMYY, prefix = "ivent")
Do not omit steps.
}
\arguments{
\item{df2}{A cleaned data frame returned by \code{load_and_clean}.}}
}
\value{
A list containing three data frames:
\itemize{
  \item \code{type_AD} -- Rows with Type A--D.
  \item \code{type_AD_deid} -- De-identified Type A--D rows.
  \item \code{non_AD} -- Rows not belonging to Type A--D.
}
\examples{
User only have to provide file, and MMMYY
Step 1: load_and_clean (file.csv, Nov-25)
Step 2: split_for_AI(df2)
Step 3: export_results(df2, list, Nov-25, prefix = "ivent")
Do not omit steps.
}
