D<-c(-0.9,0.2,1.6,-1.1,-0.1)
p1<-1
p2<-5
mu<-0.1


#log_posterior
dnorm(mu,p1,p2,log=T)+dunif(sigma,0,5,log=T)+sum(dnorm(D,mu,sigma,log=T))

#POSTERIOR
dnorm(mu,p1,p2)*dunif(sigma,0,5)*prod(dnorm(D,mu,sigma,log=T))


Y ~ Normal(mu, sigma);



alpha ~ Normal(0,1);

beta ~ Normal(0,1);

sigma ~ Uniform(0,5);

X<-c(-0.6, 0.2, -0.8, 1.6, 0.3)
Y<-c(2.3, -1.2, -0.7, -0.4, -1)

alpha<-0.1
beta<-0.1 
sigma<-0.5

mu<-alpha + beta * X

#log_posterior
dnorm(alpha,0,1,log=T)+dnorm(beta,0,1,log=T)+dunif(sigma,0,5,log=T)+sum(dnorm(Y,mu,sigma,log=T))