plot(NULL,xlim=c(-3,3),ylim=c(-10,10))
x<-seq(-5,5,length.out=100)
for( i in 1:100){
 b1<-rnorm(1,0,0.1)
 b2<-rnorm(1,0.5,0.1)
 mu<-1 + b1 * x + b2 * x^2
 lines(x,mu)
}


plot(NULL,xlim=c(-3,3),ylim=c(-10,10))
x<-seq(-5,5,length.out=100)
for( i in 1:100){
  b1<-rnorm(1,-1,0.1)
  b2<-rnorm(1,0.5,0.1)
  mu<-1 + b1 * x + b2 * x^2
  lines(x,mu)
}
mu = 1 + beta1 * X + beta2 * X^2

and the priors on the parameters

beta1 ~ Normal(p1, 0.1)

beta2 ~ Normal(p2, 0.1).