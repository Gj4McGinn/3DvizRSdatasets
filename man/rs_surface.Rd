% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/3Dplotting.R
\name{rs_surface}
\alias{rs_surface}
\title{Title}
\usage{
rs_surface(
  elmat = volcano,
  coloring = volcano,
  img_overlay1 = NULL,
  img_overlay2 = NULL,
  water = FALSE,
  wateralpha = 0.5,
  alpha_over = 0.75,
  texture = "bw",
  zscale = 250,
  shadowintens = 0.8,
  shadowReachFactor = 1,
  windowsize = c(1920, 1080),
  zoom = 0.5,
  valRange = range(coloring, na.rm = TRUE, finite = TRUE),
  plot = TRUE,
  pal = palette(),
  ...
)
}
\arguments{
\item{...}{}
}
\value{

}
\description{
Title
}
\examples{
## Plot a colored surface plot of volcano data set
rs_surface(elmat=volcano, coloring=volcano, pal=terrain.colors(50), zscale=5)
## Change e.g. coloring, so that it reflects the difference from the mean height
rs_surface(elmat=volcano, coloring=abs(volcano - mean(volcano)), pal=pal_MR$divTurbo, zscale=5)
## Coloring now to reflect the slope
gg <- imager::imgradient(volcano \%>\% `dim<-`(c(dim(.), 1,1)))
volcanoGradient <- sqrt(as.matrix(gg[[1]])^2+as.matrix(gg[[2]])^2)
rs_surface(elmat=volcano, coloring=volcanoGradient, pal=pal_MR$divViriMagma, zscale=5)
}
