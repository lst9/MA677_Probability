myname <- "Shuting Li"

prop5_82 <- NULL

for (j in 1:1000){
  game <- NULL
  num <- 0
  for (i in 1:82){
    game <- rbinom(20,1,0.5)
    if(max(rle(game)$lengths[rle(game)$values == 1])>=5){num <- num+1}
    i <- i+1 
  }
  
  prop5_82[j] <- num/82
  j <- j+1
}

prop5_82_mean <- mean(prop5_82)
prop5_82_sd <- sd(prop5_82)
#############

prop5_10 <- NULL

for (j in 1:1000){
  game <- NULL
  num <- 0
  for (i in 1:10){
    game <- rbinom(20,1,0.5)
    if(max(rle(game)$lengths[rle(game)$values == 1])>=5){num <- num+1}
    i <- i+1 
  }
  
  prop5_10[j] <- num/10
  j <- j+1
}

prop5_10_mean <- mean(prop5_10)
prop5_10_sd <- sd(prop5_10)