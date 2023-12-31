% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mc_config_set.R
\name{mc_config_set}
\alias{mc_config_set}
\title{mc_config_set}
\usage{
mc_config_set(alias, key, value, json = file.path(minio_path(), "config.json"))
}
\arguments{
\item{alias}{A configured alias, see \code{\link[=mc_alias_set]{mc_alias_set()}}}

\item{key}{the parameter name, e.g. \code{sessionToken}}

\item{value}{the value to set the parameter to}

\item{json}{path to the config}
}
\value{
updates configuration and returns silently (\code{NULL}).
}
\description{
Edit the config files, e.g. to add a sessionToken
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}

mc_config_set("play", key="sessionToken", value="MyTmpSessionToken")
\dontshow{\}) # examplesIf}
}
