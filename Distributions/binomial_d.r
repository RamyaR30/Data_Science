n1 <- rbinom(1000, size=10, prob=0.2)
n2 <- rbinom(1000, size=20, prob=0.2)
n3 <- rbinom(1000, size=30, prob=0.2)
n4 <- rbinom(1000, size=40, prob=0.2)

n5 <- rbinom(1000, size=10, prob=0.3)
n6 <- rbinom(1000, size=20, prob=0.3)
n7 <- rbinom(1000, size=30, prob=0.3)
n8 <- rbinom(1000, size=40, prob=0.3)

n9 <- rbinom(1000, size=10, prob=0.4)
n10 <- rbinom(1000, size=20, prob=0.4)
n11 <- rbinom(1000, size=30, prob=0.4)
n12 <- rbinom(1000, size=40, prob=0.4)

n13 <- rbinom(1000, size=10, prob=0.5)
n14 <- rbinom(1000, size=20, prob=0.5)
n15 <- rbinom(1000, size=30, prob=0.5)
n16 <- rbinom(1000, size=40, prob=0.5)

par(mfcol=c(4,4))

hist(n1,breaks=7,xlim=c(0,8),main="size=10 and prob=0.2",ylab='Probability')
hist(n2,breaks=7,xlim=c(0,10),main="size=20 and prob=0.2",ylab='Probability')
hist(n3,breaks=7,xlim=c(0,12),main="size=30 and prob=0.2",ylab='Probability')
hist(n4,breaks=7,xlim=c(0,15),main="size=40 and prob=0.2",ylab='Probability')

hist(n5,breaks=7,xlim=c(0,8),main="size=10 and prob=0.3",ylab='Probability')
hist(n6,breaks=7,xlim=c(0,12),main="size=20 and prob=0.3",ylab='Probability')
hist(n7,breaks=7,xlim=c(0,18),main="size=30 and prob=0.3",ylab='Probability')
hist(n8,breaks=7,xlim=c(0,23),main="size=40 and prob=0.3",ylab='Probability')


hist(n9,breaks=7,xlim=c(0,10),main="size=10 and prob=0.4",ylab='Probability')
hist(n10,breaks=7,xlim=c(0,17),main="size=20 and prob=0.4",ylab='Probability')
hist(n11,breaks=7,xlim=c(0,23),main="size=30 and prob=0.4",ylab='Probability')
hist(n12,breaks=7,xlim=c(0,25),main="size=40 and prob=0.4",ylab='Probability')

hist(n13,breaks=7,xlim=c(0,10),main="size=10 and prob=0.5",ylab='Probability')
hist(n14,breaks=7,xlim=c(2,20),main="size=20 and prob=0.5",ylab='Probability')
hist(n15,breaks=7,xlim=c(5,23),main="size=30 and prob=0.5",ylab='Probability')
hist(n16,breaks=7,xlim=c(7,32),main="size=40 and prob=0.5",ylab='Probability')
