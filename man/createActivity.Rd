% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createActivity.R
\name{createActivity}
\alias{createActivity}
\title{Create an Activity}
\usage{
createActivity(name = "being awesome", color = "#a1b2c3",
  integration = "zei", token, as_df = TRUE)
}
\arguments{
\item{name}{Name of the new activity.}

\item{color}{Color of the new activity.}

\item{integration}{Name of the integration it should integrate with.}

\item{token}{Token obtained with \code{\link{signIn}}.}

\item{as_df}{If TRUE a data frame is returned, if FALSE a list is returned.}
}
\value{
A data frame or list with id, name, color, integration and deviceSide (\code{NULL}).
}
\description{
With this endpoint you can create a new Activity. It should have name and color.
Name doesn’t have to be unique. You can also provide Integration to which Activity
will belong (zei by default, which means no special Integration). You can obtain
list of enabled Integrations with the function \code{\link{integrations}}.
}
\examples{
token <- "123456789"
createActivity(name = "being awesome", color = "#a1b2c3", integration = "zei", token, as_df = TRUE)
}
