\name{plot.CI}
\alias{plot.CI}
\title{
Plot the posterior distribution of the indirect effect alpha*beta
}
\description{
Plot the posterior distribution of the indirect effect alpha*beta including a 95\% credible interval around the mean of the posterior (see Nuijten et al. (in preparation); Yuan & MacKinnon, 2009).
}
\usage{
\method{plot}{CI}(x,\dots)
}
\arguments{
  \item{x}{
the posterior samples of alpha*beta as obtained from the output of \code{\link{jzs_medSD}}. This is an object of class \code{CI}.
}
  \item{\dots}{
additional arguments to be passed on to the plot method, such as graphical parameters (see \code{par}).
}
}
\references{
Nuijten, M.B., Wetzels, R., Matzke, D., Dolan, C. V., & Wagenmakers, E.-J. (in preparation). A default Bayesian hypothesis test for mediation. 

Yuan, Y., & MacKinnon, D. (2009). Bayesian mediation analysis. Psychological Methods, 14, 301-322.
}
\author{
Michele B. Nuijten <michele.nuijten@gmail.com>
}
\note{
For the exact lower and upper boundary inspect the \code{...$CI_ab} component of the \code{jzs_medSD} output.
}
\seealso{
\code{\link{jzs_medSD}}
}
\examples{
# simulate mediational data
X <- rnorm(50,0,1)
M <- .5*X + rnorm(50,0,1)
Y <- .3*X + .6*M + rnorm(50,0,1)

# run jzs_medSD
res <- jzs_medSD(independent=X,dependent=Y,mediator=M)

# plot posterior distribution of a*b
plot(res$alpha_times_beta)

# print the exact lower and upper boundary of the interval
res$CI_ab
}