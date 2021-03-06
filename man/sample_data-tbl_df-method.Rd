% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/phyloseq-constructors.R
\docType{methods}
\name{sample_data,tbl_df-method}
\alias{sample_data,tbl_df-method}
\title{Constructor for creating sample_data from a tibble (class tbl_df)}
\usage{
\S4method{sample_data}{tbl_df}(object)
}
\description{
Assumes that the first column is the sample names.
}
\details{
This function creates a plain \code{data.frame} from \code{object} that contains all
columns except the first one, which is used for the row names. The resulting
data frame is then passed to \code{sample_data()}.
}
\seealso{
phyloseq::sample_data

\dontrun{
# Read a .csv file with readr, which creates an object of class `tbl_df`
tbl <- readr::read_csv("path/to/sample_data.csv")
# Inspect and check that the first column contains the sample names
head(tbl) 
# Create a phyloseq `sample_data` object
sam <- sample_data(tbl)
}
}
