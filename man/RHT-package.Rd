\name{RHT-package}
\alias{RHT-package}
\alias{RHT}
\docType{package}
\title{
Regularized Hotelling's T-square Test for Pathway (Gene Set) Analysis
}
\description{
This package offers functions to perform regularized Hotelling's T-square
test for pathway or gene set analysis. The package is tailored for 
but not limited to proteomics data, in which sample sizes are often 
small, and a large proportion of the data are missing and/or correlations
may be present. 
}
\details{
\tabular{ll}{
Package: \tab RHT\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-11-14\cr
License: \tab GPL \cr
LazyLoad: \tab yes\cr
}

}
\author{
Lin S. Chen and Pei Wang

Maintainer: Lin S. Chen <lchen11@uchicago.edu>
}
\references{
Chen LS, Paul D, Prentice RL and Wang P. (2011) A regularized Hotelling's T-square test for 
pathway analysis in proteomics studies. Journal of the American Statistical Association, in press. 
}
\seealso{
\code{\link{RHT.fun}}, \code{\link{RHT.2samp}} 
}
\examples{
 ## we simulate a data set with N=10 samples and p=50 proteins. 
  ## 20% of the data are missing.
  ## Among the 50 proteins, we randomly assign 2 pathways, with 5 and 12 proteins, respectively.
  
  set.seed(1)
  X <- matrix(rnorm(500),nrow=10)
  X[sample(1:500, 0.2*500)] <- NA
  path.idx <- list()
  path.idx[[1]] <- 1:5
  path.idx[[2]] <- 13:24
  names(path.idx) <- c("pathway A", "pathway B")
  
  ## The following function tests each pathway to see
  ## if any of the proteins in each pathway shows non-zero 
  ## abundance/expression
  
  pval <- RHT.fun(path.idx, dat=X)
  
}
