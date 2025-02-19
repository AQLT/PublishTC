% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_lollypop.R
\name{lollypop}
\alias{lollypop}
\alias{gglollypop}
\title{Lollypop plot}
\usage{
lollypop(
  object,
  xlim = NULL,
  ylim = NULL,
  col_tc = "#E69F00",
  col_sa = "black",
  color_points = col_sa,
  cex_points = 1,
  pch_points = 16,
  xlab = "",
  ylab = "",
  ...
)

gglollypop(
  object,
  col_tc = "#E69F00",
  col_sa = "black",
  color_points = col_sa,
  cex_points = 1,
  pch_points = 16,
  legend_tc = "Trend-cycle",
  legend_sa = "Seasonally adjusted",
  lty_last_tc = 2,
  ...
)
}
\arguments{
\item{object}{\code{"tc_estimates"} object.
If \code{object} is a \code{"tc_estimates"} object then \code{sa} is optional.}

\item{xlim, ylim}{x and y limits of the plot.
If \code{NULL} (the default), then the limits determined automatically.}

\item{col_sa, col_tc}{color of the seasonally adjusted and trend-cycle components.}

\item{color_points, cex_points}{color and size of the points associated to the seasonnaly adjusted component.}

\item{pch_points}{point type of the seasonally adjusted component.}

\item{xlab, ylab}{x and y axis labels.}

\item{...}{other parameters.}

\item{legend_tc, legend_sa}{legend of the trend-cycle and seasonally adjusted components.}

\item{lty_last_tc}{line type of the last values of the trend-cycle component.}
}
\description{
Lollypop plot
}
