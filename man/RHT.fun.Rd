\name{RHT.fun}
\alias{RHT.fun}
\title{
  One-sample Regularized Hotelling's T-square Test 
}
\description{
  This function tests if a pathway (or gene set) consists of any protein (or gene)
  that shows non-zero abundance (or expression).
}
\usage{
RHT.fun(path.idx, dat, nsim = 1000, seed = 123)
}

\arguments{
  \item{path.idx}{This is a LIST. Each element in the list contains the indice of proteins 
  (or genes) for a pathway in the data set.
}
  \item{dat}{An N by p matrix of protein abundance (or gene expression). Each row represents
  one sample and each column represents a protein (or a gene).
}
  \item{nsim}{Number of resamples needed to calculate the p-value. By default, nsim=1000.
}
  \item{seed}{A single integer that controls the random number generator in the resampling.
}
}

\value{
    The function returns the p-values for each pathway in the list \code{path.idx}.
}
\references{
Chen LS, Paul D, Prentice RL and Wang P. (2011) A regularized Hotelling's T-square test for 
pathway analysis in proteomics studies. Journal of the American Statistical Association, in press. 
}
\author{
Lin S Chen and Pei Wang
}

\seealso{
See Also \code{\link{RHT.2samp}}
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
\keyword{ RHT }

