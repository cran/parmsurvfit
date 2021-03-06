% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit_data.R
\name{fit_data}
\alias{fit_data}
\title{Fitting right censored survival data to distribution}
\usage{
fit_data(data, dist, time = "time", censor = "censor", by = "")
}
\arguments{
\item{data}{A dataframe containing a time column and a censor column.}

\item{dist}{A string name for a distribution that has a corresponding density function and a distribution function.
Examples include "norm", "lnorm", "exp", "weibull", "logis", "llogis", "gompertz", etc.}

\item{time}{The string name of the time column of the dataframe. Defaults to "time".}

\item{censor}{The string name of the censor column of the dataframe. Defaults to "censor".
The censor column must be a numeric indicator variable where complete times correspond
to a value of 1 and incomplete times correspond to 0.}

\item{by}{The string name of a grouping variable. If specified, the function returns a list. The list will be in
alphabetic order of the values in the by column.
Variable can contain logical, string, character, or numeric data.}
}
\description{
Fits right censored data to a distribution using maximum likelihood estimates.
}
\examples{
data("rearrest")
fit_data(rearrest, "lnorm", time = "months")

fit_data(rearrest, "weibull", time = "months", by = "personal")

}
\seealso{
\code{\link[fitdistrplus]{fitdistcens}}
}
