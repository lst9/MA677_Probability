
### simulate example 3.11 on book ######
type1error <- function(n,m,p){
  x <- rbinom(1000,n,p)
  sum(x>=m)/length(x)}

y1 <- NULL
y2 <- NULL

powercurve <- function(m1,m2,n){
  p <- seq(0.4,1,0.001)
  for (i in 1:length(p)){
    y1[i] <- type1error(n,m1,p[i])
    y2[i] <- type1error(n,m2,p[i])
    i <- i+1
  }
  plot(p,y1,type="l", ylab = "alpha")
  lines(p,y2,col="red")
}

powercurve(69,73,100)

type1error(100,69,0.6)
1-type1error(100,73,0.8)

###choose n and minimum m for n
check_alpha_nm <- function(n,p,alpha){
  for (m in 1:n){
    if(type1error(n,m,p) < alpha){
      result <- c(n,m)
      return (result)
    }
     m <- m+1 
  }
}
check_beta_nm <- function(n,p,beta){
  for (m in 1:n){
    if(1-type1error(n,m,p) > beta){
      result <- c(n,m)
      return (result)
    }
    m <- m+1 
  }
}
check_alpha_nm(100,0.6,0.05)
check_beta_nm(100,0.8,0.95)

####### use pwr package to validate ######
library(pwr)

pwr.2p.test(h = ES.h(p1 = 0.6, p2 = 0.8), sig.level = 0.05, power = 0.95) 



