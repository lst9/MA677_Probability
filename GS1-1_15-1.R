myname <- "Shuting Li"

library(zoo)

prop5_82 <- NULL
i <- 1
j <- 1
for (j in 1:1000){
  game <- NULL
  for (i in 1:82){
    game <- cbind(game,rbinom(20,1,0.5))
    i <- i+1
  }
  
  prop5_82[j] <- sum(apply(rollmean(game,5),2,max)==1)/82
  j <- j+1
}

prop5_82_mean <- mean(prop5_82)
prop5_82_sd <- sd(prop5_82)

###############

prop5_10 <- NULL

for (j in 1:1000){
  game <- NULL
  for (i in 1:10){
    game <- cbind(game,rbinom(20,1,0.5))
    i <- i+1
  }
  
  prop5_10[j] <- sum(apply(rollmean(game,5),2,max)==1)/10
  j <- j+1
}

prop5_10_mean <- mean(prop5_10)
prop5_10_sd <- sd(prop5_10)

