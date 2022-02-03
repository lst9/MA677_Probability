boy <- 0
girl <- 0


## at least one boy
boy_num <- NULL
kids_boy <- 1
for (i in 1:100000){
  boy_num <- c(boy_num,kids_boy)
  
  while(boy==0){
    n <- rbinom(1,1,0.5)
    if (n==0){
      kids_boy <- kids_boy+1
    } else {
      boy <- boy+1
    }
  }
i <- i+1
}

mean(boy_num)


## at least one girl
girl_num <- NULL
kids_girl <- 1
for (i in 1:100000){
  girl_num <- c(girl_num,kids_girl)
  
  while(boy==0){
    n <- rbinom(1,1,0.5)
    if (n==0){
      kids_girl <- kids_girl+1
    } else {
      girl <- girl+1
    }
  }
  i <- i+1
}

mean(girl_num)

##
mean(boy_num) - mean(girl_num)

