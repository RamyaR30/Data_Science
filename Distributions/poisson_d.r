n1 <- rpois(1000, lambda=5)
n2 <- rpois(1000, lambda=10)
n3 <- rpois(1000, lambda=15)
n4 <- rpois(1000, lambda=20)

n5 <- rpois(800, lambda=5)
n6 <- rpois(800, lambda=10)
n7 <- rpois(800, lambda=15)
n8 <- rpois(800, lambda=20)

n9 <- rpois(700, lambda=5)
n10 <- rpois(700, lambda=10)
n11 <- rpois(700, lambda=15)
n12 <- rpois(700, lambda=20)

n13 <- rpois(600, lambda=5)
n14 <- rpois(600, lambda=10)
n15 <- rpois(600, lambda=15)
n16 <- rpois(600, lambda=20)

par(mfcol=c(4,4))

hist(n1,breaks=10,main="n=1000 and lambda=5")
hist(n2,breaks=10,main="n=1000 and lambda=10")
hist(n3,breaks=10,main="n=1000 and lambda=15")
hist(n4,breaks=10,main="n=1000 and lambda=20")

hist(n5,breaks=10,main="n=800 and lambda=5")
hist(n6,breaks=10,main="n=800 and lambda=10")
hist(n7,breaks=10,main="n=800 and lambda=15")
hist(n8,breaks=10,main="n=800 and lambda=20")


hist(n9,breaks=10,main="n=700 and lambda=5")
hist(n10,breaks=10,main="n=700 and lambda=10")
hist(n11,breaks=10,main="n=700 and lambda=15")
hist(n12,breaks=10,main="n=700 and lambda=20")

hist(n13,breaks=10,main="n=600 and lambda=5")
hist(n14,breaks=10,main="n=600 and lambda=10")
hist(n15,breaks=10,main="n=600 and lambda=15")
hist(n16,breaks=10,main="n=600 and lambda=20")
