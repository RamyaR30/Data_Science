size=1000

n1 <- rnorm(size, mean=10, sd=10)
n2 <- rnorm(size, mean=20, sd=10)
n3 <- rnorm(size, mean=30, sd=10)
n4 <- rnorm(size, mean=40, sd=10)

n5 <- rnorm(size, mean=10, sd=50)
n6 <- rnorm(size, mean=20, sd=50)
n7 <- rnorm(size, mean=30, sd=50)
n8 <- rnorm(size, mean=40, sd=50)

n9 <- rnorm(size, mean=10, sd=100)
n10 <- rnorm(size, mean=20, sd=100)
n11 <- rnorm(size, mean=30, sd=100)
n12 <- rnorm(size, mean=40, sd=100)

n13 <- rnorm(size, mean=10, sd=150)
n14 <- rnorm(size, mean=20, sd=150)
n15 <- rnorm(size, mean=30, sd=150)
n16 <- rnorm(size, mean=40, sd=150)

par(mfcol=c(4,4))

hist(n1,breaks=20,xlim=c(-30,40),main="mean=10 and sd=10")
hist(n2,breaks=20,xlim=c(-40,70),main="mean=20 and sd=10")
hist(n3,breaks=20,xlim=c(-40,80),main="mean=30 and sd=10")
hist(n4,breaks=20,xlim=c(-30,80),main="mean=40 and sd=10")

hist(n5,breaks=20,xlim=c(-150,150),main="mean=10 and sd=50")
hist(n6,breaks=20,xlim=c(-150,150),main="mean=20 and sd=50")
hist(n7,breaks=20,xlim=c(-150,170),main="mean=30 and sd=50")
hist(n8,breaks=20,xlim=c(-150,170),main="mean=40 and sd=50")


hist(n9,breaks=20,xlim=c(-270,270),main="mean=10 and sd=100")
hist(n10,breaks=20,xlim=c(-270,270),main="mean=20 and sd=100")
hist(n11,breaks=20,xlim=c(-270,270),main="mean=30 and sd=100")
hist(n12,breaks=20,xlim=c(-270,270),main="mean=40 and sd=100")

hist(n13,breaks=20,xlim=c(-360,360),main="mean=10 and sd=150")
hist(n14,breaks=20,xlim=c(-360,360),main="mean=20 and sd=150")
hist(n15,breaks=20,xlim=c(-360,360),main="mean=30 and sd=150")
hist(n16,breaks=20,xlim=c(-360,360),main="mean=40 and sd=150")

