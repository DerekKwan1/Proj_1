
par <- 10000
redemption<-10000
n <- 20
i <- .04
r <-.06
j <- i/2
coupon_size <- par * r
price <- (coupon_size*an) + (redemption*((1+j)^(-n)))
an <- (1-(1+j)^(-n))/j

amount <- matrix(0, 1 + n, 4)
amount[1,1] <- coupon_size
amount[1,4] <- price


for (time in 1:n) {
  OB<- amount[time,4]
  int<- OB*j
  PR<-coupon_size-int
  OB<- OB-PR
  amount[time+1,1]<- coupon_size
  amount[time+1,2]<- int
  amount[time+1,3]<- PR
  amount[time+1,4]<- OB
}


rownames(amount) <- c("Time", 1:n)
colnames(amount) <- c("Coupon", "Interest added", "Principal Repaid", "Book Value")
print(amount)
