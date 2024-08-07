% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot-bts.R
\name{plot_bts}
\alias{plot_bts}
\title{Plot bottom trawl survey data}
\usage{
plot_bts(
  M,
  xlab = "Year",
  ylab = "Bottom trawl survey biomass",
  xlim = NULL,
  ylim = NULL,
  color = "purple",
  biomass = TRUE
)
}
\arguments{
\item{M}{A list of models where each model has the needed attributes.}

\item{xlab}{Label for the x-axis.}

\item{ylab}{Label for the y-axis.}

\item{xlim}{Limits for the x-axis.}

\item{ylim}{Limits for the y-axis.}

\item{color}{Color for the points.}

\item{biomass}{Logical indicating if biomass data should be used. If FALSE, other measurements are used.}
}
\value{
A ggplot object with the plotted data.
}
\description{
This function takes a list of models and plots the observed, predicted and confidence intervals for the bottom trawl survey data.
}
