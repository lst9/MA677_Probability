myname <- "Shuting Li"

set.seed(2)

a <- runif(1000,0,1)
group <- as.numeric(cut(a, breaks = c(0, 0.5, 0.8333, 1)))

prA <- sum(group==1)/1000
prB <- sum(group==2)/1000
prC <- sum(group==3)/1000
sum_pr <- prA+prB+prC

#########
library(ggplot2)
data <- data.frame(variable=c(1,2,3), pr=c(prA,prB,prC), value=c(prA/(1/2),prB/(1/3),prC/(1/6)))
ggplot(data, aes(x=variable,y=value)) + 
  geom_bar(stat = "identity", width=c(1/2,1/3,1/6))
