% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rescale-cov.R
\name{rescale_cov}
\alias{rescale_cov}
\title{Rescale a Covariance Matrix}
\usage{
rescale_cov(Sigma, Scale_factor, DoChol = FALSE)
}
\arguments{
\item{Sigma}{A covariance matrix that needs to be rescaled.}

\item{Scale_factor}{A numeric value or vector used for scaling.}

\item{DoChol}{Logical indicating if the Cholesky decomposition method should be used.
If \code{FALSE}, the simple diagonal adjustment method is used. Default is \code{FALSE}.}
}
\value{
A rescaled covariance matrix.
}
\description{
This function rescales a covariance matrix using either the Cholesky
decomposition method or a simple diagonal adjustment.
}
