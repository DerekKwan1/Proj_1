
principal <- 200000
n <- 120
monthly_rate<- ((1.03)^(1/12))-1
v<-(1+monthly_rate)^(-n)
payment_size<-principal/((1-v)/monthly_rate)
amount <- matrix(0, 1 + n, 4)
amount[1,1] <- payment_size
amount[1,4] <- principal


for (time in 1:n) {
  OB<- amount[time,4]
  int<- OB*monthly_rate
  PR<-payment_size-int
  OB<- OB-PR
  amount[time+1,1]<- payment_size
  amount[time+1,2]<- int
  amount[time+1,3]<- PR
  amount[time+1,4]<- OB
}


rownames(amount) <- c("Time", 1:n)
colnames(amount) <- c("Payments", "Interest added", "Principal Repaid", "Outstanding Balance")
print(amount)

