library(rstan)
d<-read.csv("C:/Users/RAMYA/Desktop/D229.csv")

model<-stan(model_code="
data{
  int N;
  vector[N] iq;
  vector[N] time;
  int f[N];
  int size[N];
}

parameters{
  real alpha;
  real betaiq;
  real betat;
  
}

model{
  vector[N] prob;
  alpha ~ uniform(-10,10);
  betaiq ~ uniform(-10,10);
  betat ~ uniform(-10,10);
  prob=inv_logit(alpha+betaiq*iq+betat*time);
  f ~ binomial(size,prob);
}
", data=list(N=nrow(d),f=d$FAIL,iq=d$IQ,time=d$TIME,size=d$SIZE))

samples<-extract(model)

hist(samples$betaiq)