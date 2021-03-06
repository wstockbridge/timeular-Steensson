% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/editActivity.R
\name{editActivity}
\alias{editActivity}
\title{Edit an Activity}
\usage{
editActivity(activityId = NULL, name = "being fucking awesome",
  color = "#000000", token, as_df = TRUE)
}
\arguments{
\item{activityId}{ID of an Activity, eg. 123.}

\item{name}{The name you want the activity changed to.}

\item{color}{The color you want the activity changed to.}

\item{token}{Token obtained with \code{\link{signIn}}.}

\item{as_df}{If TRUE a data frame is returned, if FALSE a list is returned.}
}
\value{
A data frame or list with id, name, color, integration and deviceSide (\code{NULL}).
}
\description{
With this function you can edit the activity name or color.
}
\examples{
token <- "123456789"
editActivity(activityId = NULL, name = "being fucking awesome", color = "#000000", token, as_df = TRUE)
}
