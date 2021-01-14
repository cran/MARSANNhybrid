\name{MARSANNhybrid}
\alias{MARSANNhybrid}
\title{MARS based ANN Hybrid Model}
\usage{MARSANNhybrid(Data,k,deg,h,r)}
\description{MARSANNhybrid model is combined machine learning hybrid approach of MARS and ANN.}
%-
  \arguments{
    \item{Data}{
      A Multivariate data in regression framework, with first column as Y (dependent variable) and remaining colums as X (independent variables).}
    \item{k}{
      Partition value for spliting the data set into training and testing.
    }
    \item{deg}{
      Degree of Multivariate Adaptive Regression Spline model to be used for model building.
    }
    \item{h}{
    Total number of hidden nodes.
    }
    \item{r}{
    Replications used for neural network training.
    }
  }
\details{
MARSANNhybrid uses the combined hybrid approach proposed by Das (2019). MARS model identify the important variables from a multivariate dataset based on GCV and RSS values.  The prediction model is built using ANN model based on these selected important variables. Further this predictive model is used for prediction the dependent variables.
}

\value{
It returns the accuracy measures of the fitted Machine learning hybrid model and the plot of the best fitted neural network.
}

\references{
  %%
    Das (2019)<http://krishikosh.egranth.ac.in/handle/1/5810147805>
}
\author{
  Pankaj Das, Achal Lama, Girish Kumar Jha
}
\seealso{earth,neuralnet}
\examples{
data(iris)
MARSANNhybrid(iris[,1:4],0.9,2,1,2)
}
\keyword{Hybrid}
\keyword{Machine learning}
\keyword{MARS}
\keyword{ANN}
