% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot-R-rel.R
\name{plot_R_rel}
\alias{plot_R_rel}
\title{Plot predicted recruitment}
\usage{
plot_R_rel(
  M,
  xlab = "Year",
  ylab = "Relative age-1 recruits",
  ylim = NULL,
  xlim = NULL,
  alpha = 0.1,
  legend = TRUE,
  rel = TRUE
)
}
\arguments{
\item{M}{List object(s) created by read_admb function}

\item{xlab}{the x-label of the figure}

\item{ylab}{the y-label of the figure}

\item{ylim}{is the upper limit of the figure}

\item{alpha}{the opacity of the ribbon}
}
\value{
Plot of model estimates of spawning stock biomass
}
\description{
Plot predicted recruitment
}
