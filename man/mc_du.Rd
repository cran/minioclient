% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mc_du.R
\name{mc_du}
\alias{mc_du}
\title{Show disk usage for a target path}
\usage{
mc_du(target, flags = "")
}
\arguments{
\item{target}{alias/bucket to list}

\item{flags}{optional additional flags}
}
\value{
Returns the list from \code{\link[processx:run]{processx::run()}}, with components \code{status},
\code{stdout}, \code{stderr}, and \code{timeout}; invisibly.
}
\description{
Show disk usage for a target path
}
\details{
for more help, run \code{mc_du("-h")}
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}

# create a new bucket
mc_mb("play/minioclient-test")

# no disk usage on new bucket
mc_du("play/minioclient-test")

# clean up
mc_rb("play/minioclient-test")
\dontshow{\}) # examplesIf}
}
