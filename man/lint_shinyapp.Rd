% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lint.R
\name{lint_shinyapp}
\alias{lint_shinyapp}
\title{Lint a shiny application}
\usage{
lint_shinyapp(path = ".", relative_path = TRUE, ..., exclusions = NULL)
}
\arguments{
\item{path}{the path to the base directory of the shiny app.}

\item{relative_path}{if \code{TRUE}, file paths are printed using their path
relative to the app base directory.  If \code{FALSE}, use the full
absolute path.}

\item{...}{additional arguments passed to \code{\link{lint}}, e.g.
\code{cache} or \code{linters}.}

\item{exclusions}{exclusions for \code{\link{exclude}}, relative to the
shiny app path.}
}
\value{
A list of lint objects.
}
\description{
Apply one or more linters to all of the R files in a shiny application.
}
\examples{
\dontrun{
  lint_shinyapp()
  lint_shinyapp(
    linters = list(semicolon_terminator_linter())
    cache = TRUE,
    exclusions = list("inst/doc/creating_linters.R" = 1, "inst/example/bad.R")
  )
}
}
