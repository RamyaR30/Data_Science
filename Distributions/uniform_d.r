par(mfcol=c(4,4))

u1=runif(10, min = 0, max = 1)
u2=runif(100, min = 0, max = 1)
u3=runif(1000, min = 0, max = 1)
u4=runif(10000, min = 0, max = 1)

u5=runif(10, min = 0, max = 2)
u6=runif(100, min = 0, max = 2)
u7=runif(1000, min = 0, max = 2)
u8=runif(10000, min = 0, max = 2)

u9=runif(10, min = 0, max = 3)
u10=runif(100, min = 0, max = 3)
u11=runif(1000, min = 0, max = 3)
u12=runif(10000, min = 0, max = 3)

u13=runif(10, min = 0, max = 4)
u14=runif(100, min = 0, max = 4)
u15=runif(1000, min = 0, max = 4)
u16=runif(10000, min = 0, max = 4)



par(mfcol=c(4,4))

hist(u1,breaks=20,xlim=c(0,4),main="size = 10 and max = 1")
hist(u2,breaks=20,xlim=c(0,4),main="size = 100 and max = 1")
hist(u3,breaks=20,xlim=c(0,4),main="size = 1000 and max = 1")
hist(u4,breaks=20,xlim=c(0,4),main="size = 10000 and max = 1")

hist(u5,breaks=20,xlim=c(0,4),main="size = 10 and max = 2")
hist(u6,breaks=20,xlim=c(0,4),main="size = 100 and max = 2")
hist(u7,breaks=20,xlim=c(0,4),main="size = 1000 and max = 2")
hist(u8,breaks=20,xlim=c(0,4),main="size = 10000 and max = 2")

hist(u9,breaks=20,xlim=c(0,4),main="size = 10 and max = 3")
hist(u10,breaks=20,xlim=c(0,4),main="size = 100 and max = 3")
hist(u11,breaks=20,xlim=c(0,4),main="size = 1000 and max = 3")
hist(u12,breaks=20,xlim=c(0,4),main="size = 10000 and max = 3")

hist(u13,breaks=20,xlim=c(0,4),main="size = 10 and max = 4")
hist(u14,breaks=20,xlim=c(0,4),main="size = 100 and max = 4")
hist(u15,breaks=20,xlim=c(0,4),main="size = 1000 and max = 4")
hist(u16,breaks=20,xlim=c(0,4),main="size = 10000 and max = 4")