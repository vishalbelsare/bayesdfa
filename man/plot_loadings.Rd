% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_loadings.R
\name{plot_loadings}
\alias{plot_loadings}
\title{Plot the loadings from a DFA}
\usage{
plot_loadings(
  rotated_modelfit,
  names = NULL,
  facet = TRUE,
  violin = TRUE,
  conf_level = 0.95,
  threshold = NULL
)
}
\arguments{
\item{rotated_modelfit}{Output from \code{\link[=rotate_trends]{rotate_trends()}}.}

\item{names}{An optional vector of names for plotting the loadings.}

\item{facet}{Logical. Should there be a separate facet for each trend?
Defaults to \code{TRUE}.}

\item{violin}{Logical. Should the full posterior densities be shown as a
violin plot? Defaults to \code{TRUE}.}

\item{conf_level}{Confidence level for credible intervals. Defaults to 0.95.}

\item{threshold}{Numeric (0-1). Optional for plots, if included, only plot
loadings who have Pr(<0) or Pr(>0) > threshold. For example \code{threshold = 0.8}
would only display estimates where 80\% of posterior density was above/below
zero. Defaults to \code{NULL} (not used).}
}
\description{
Plot the loadings from a DFA
}
\examples{
set.seed(42)
s <- sim_dfa(num_trends = 2, num_ts = 4, num_years = 10)
# only 1 chain and 180 iterations used so example runs quickly:
m <- fit_dfa(y = s$y_sim, num_trends = 2, iter = 50, chains = 1)
r <- rotate_trends(m)
plot_loadings(r, violin = FALSE, facet = TRUE)
plot_loadings(r, violin = FALSE, facet = FALSE)
plot_loadings(r, violin = TRUE, facet = FALSE)
plot_loadings(r, violin = TRUE, facet = TRUE)
}
\seealso{
plot_trends fit_dfa rotate_trends
}
