library(rstan)
d<-read.csv("C:/Users/RAMYA/Desktop/D614.csv")

model<-stan(model_code="
data{
  int<lower=0> N;
  vector[N] x1;
  vector[N] x2;
  vector[N] y;
}

parameters{
  real alpha;
  real beta1;
  real beta2;
  real <lower=0> sigma;
}

model{
  vector[N] mu;
  alpha ~ normal(0,0.5);
  beta1 ~ normal(0,0.5);
  beta2 ~ normal(0,0.5);
  sigma ~ exponential(1);
   
  mu=alpha+beta1*x1+beta2*x2;
  y ~ normal(mu,sigma);
}
", data=list(N=nrow(d),x1=d$X1,x2=d$X2,y=d$Y))

samples<-extract(model)

hist(samples$alpha)