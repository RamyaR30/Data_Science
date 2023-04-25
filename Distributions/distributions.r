set.seed(1)

#READ FILE
d<-read.csv("C:/Users/RAMYA/Desktop/D307.csv")

#PLOT
hist(d$x)
k<-rpois(1000,1)
hist(k)

#GENERATING RANDOM DISTRIBUTIONS:

d<-rnorm(50,0,1)
d0<- rgamma(10, 10)
d2<- rpois(20,lambda = 5)
d3<-rbinom


#PDF:
dnorm(x=-1,mean=1,sd=5)
dexp(x=1, rate = 2)
#CDF:
pnorm(q=-1,mean=1,sd=5,lower.tail=F)
pbinom(4, size=12, prob=0.2) 
ppois(16, lambda=12, lower=FALSE)
pexp(1, rate=2) 


#QUANTILE/ i-CDF:
qnorm(p=0,mean=4,sd=1)
qbinom(0.9, n = 100,p = 0.5)


#BINOMIAL
dbinom(x, size, prob, log = FALSE)
pbinom(q, size, prob, lower.tail = TRUE, log.p = FALSE)
qbinom(p, size, prob, lower.tail = TRUE, log.p = FALSE)
rbinom(n, size, prob)


#NORMAL
dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(n, mean = 0, sd = 1)

#POISSON
dpois(x, lambda, log = FALSE)
ppois(q, lambda, lower.tail = TRUE, log.p = FALSE)
qpois(p, lambda, lower.tail = TRUE, log.p = FALSE)
rpois(n, lambda)

#UNI
dunif(x, min = 0, max = 1, log = FALSE)
punif(q, min = 0, max = 1, lower.tail = TRUE, log.p = FALSE)
qunif(p, min = 0, max = 1, lower.tail = TRUE, log.p = FALSE)
runif(n, min = 0, max = 1)

#GAMMA
dgamma(x, shape, rate = 1, scale = 1/rate, log = FALSE)
pgamma(q, shape, rate = 1, scale = 1/rate, lower.tail = TRUE,log.p = FALSE)
qgamma(p, shape, rate = 1, scale = 1/rate, lower.tail = TRUE, log.p = FALSE)
rgamma(n, shape, rate = 1, scale = 1/rate)


https://rstudio-pubs-static.s3.amazonaws.com/100906_8e3a32dd11c14b839468db756cee7400.html
http://www.r-tutor.com/elementary-statistics/probability-distributions/poisson-distribution
https://statisticsglobe.com/probability-distributions-in-r
