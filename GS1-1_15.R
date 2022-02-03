library(zoo)

game <- NULL

for (i in 1:10000){
  game <- cbind(game,rbinom(20,1,0.5))
  i <- i+1
}
  
sum(apply(rollmean(game,5),2,max)==1)/10000
