myname <- "Shuting Li"

set.seed(1)

data_coin <- data.frame(ID=c(1:1000),value=rbinom(1000,100,0.5))
subdata_coin <- subset(data_coin,value>=35 & value<=65) 

hist(subdata_coin$value, prob = TRUE, main = "Histogram with normal curve")
x <- seq(35,65, length = 40)
y <- dnorm(x, mean = mean(subdata_coin$value), sd = sd(subdata_coin$value))
lines(x, y, col = "red", lwd = 2)

