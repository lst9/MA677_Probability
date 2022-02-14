## b,c ~ U(0,1)

## find prob that bc<0.5

b <- runif(10000)
c <- runif(10000)

bc <- b*c

a <- which(bc<0.5)

na <- length(a)

plot(b[a],c[a], col="green")

na/10000

#######with R you get the error term

library(pracma)
options(digits=4)

fun <- function(x,y) 1

integral2(fun,
          xmin=.5,
          xmax=1,
          ymin=.5,
          ymax <- function(x)(1/(2*x)))

#(log(1,base = exp(1))-log(1/2,base = exp(1)))*1/2+1/2
