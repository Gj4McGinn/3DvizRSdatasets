% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/3Dplotting.R
\name{values2rgb}
\alias{values2rgb}
\title{Maps a matrix of values (=image) onto an RGB (given a palette) to be used in rayshader}
\usage{
values2rgb(
  values,
  pal = palette(),
  valRange = range(values, na.rm = TRUE, finite = TRUE),
  trimRange = TRUE,
  na.color = NA,
  rescaleMid = T,
  ...
)
}
\arguments{
\item{values}{Value matrix to map}

\item{pal}{The palette to be used}

\item{valRange}{Range of values to be considered for mapping (min, max)}

\item{trimRange}{Should values be trimmed to that range?}

\item{na.color}{color for NA values}

\item{rescaleMid}{Should 0 be preferred to be in middle of colorscale? Default:TRUE}

\item{...}{parameters to be further passed on}
}
\value{
returns array (rgba, col, row)
}
\description{

}
