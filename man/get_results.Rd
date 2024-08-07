% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get-results.R
\name{get_results}
\alias{get_results}
\title{Fetch Model Results in Parallel}
\usage{
get_results(
  mod_names. = mod_names,
  rundir = "runs",
  moddir = mod_dir,
  run_on_mac = TRUE
)
}
\arguments{
\item{mod_names.}{A character vector of model names. Default is 'mod_names'.}

\item{rundir}{The main sub directory path for the models. Default is 'runs'}

\item{moddir}{The main directory path for the models. Default is 'mod_dir'}
}
\value{
A list containing model results.
}
\description{
This function fetches model results based on specified model names and directories.
}
