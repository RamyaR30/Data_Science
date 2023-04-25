r1 <- rexp(n = 100, rate = 0.5)
r2 <- rexp(n = 120, rate = 0.5)
r3 <- rexp(n = 140, rate = 0.5)
r4 <- rexp(n = 160, rate = 0.5)

r5 <- rexp(n = 100, rate = 1)
r6 <- rexp(n = 120, rate = 1)
r7 <- rexp(n = 140, rate = 1)
r8 <- rexp(n = 160, rate = 1)

r9 <- rexp(n = 100, rate = 1.5)
r10 <- rexp(n = 120, rate = 1.5)
r11 <- rexp(n = 140, rate = 1.5)
r12 <- rexp(n = 160, rate = 1.5)

r13 <- rexp(n = 100, rate = 2)
r14 <- rexp(n = 120, rate = 2)
r15 <- rexp(n = 140, rate = 2)
r16 <- rexp(n = 160, rate = 2)

par(mfcol=c(4,4))

hist(r1,breaks=20,xlim=c(0,8),main="rate = 0.5 and n= 100")
hist(r2,breaks=20,xlim=c(0,8),main="rate = 0.5 and n= 120")
hist(r3,breaks=20,xlim=c(0,8),main="rate = 0.5 and n= 140")
hist(r4,breaks=20,xlim=c(0,8),main="rate = 0.5 and n= 160")

hist(r5,breaks=20,xlim=c(0,5),main="rate = 1 and n= 100")
hist(r6,breaks=20,xlim=c(0,5),main="rate = 1 and n= 120")
hist(r7,breaks=20,xlim=c(0,5),main="rate = 1 and n= 140")
hist(r8,breaks=20,xlim=c(0,5),main="rate = 1 and n= 160")

hist(r9,breaks=20,xlim=c(0,2),main="rate = 1.5 and n= 100")
hist(r10,breaks=20,xlim=c(0,3),main="rate = 1.5 and n= 120")
hist(r11,breaks=20,xlim=c(0,3),main="rate = 1.5 and n= 140")
hist(r12,breaks=20,xlim=c(0,2),main="rate = 1.5 and n= 160")

hist(r13,breaks=20,xlim=c(0,2),main="rate = 2 and n= 100")
hist(r14,breaks=20,xlim=c(0,2),main="rate = 2 and n= 120")
hist(r15,breaks=20,xlim=c(0,2),main="rate = 2 and n= 140")
hist(r16,breaks=20,xlim=c(0,2),main="rate = 2 and n= 160")