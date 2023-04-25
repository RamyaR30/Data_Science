'''QUESTION: model the height as a normal distributed variable with a mean (mu, µ) depending on the age. For the model, you need the parameter alpha, beta and sigma. Fit the model using ULAM from the R rethinking1 package, or code it
in Stan2 and run it from R or Python.
Plot the data in a scatter plot (as in the previous question 6.1) with 100 regression lines taken from the
posterior as overlay.'''


data <- read.csv("data.csv")

x=data$age #x-axis has age
h=data$height #y-axis has height 

w_bar<-mean(x)
#w<-x #age considering child to very old
w<-seq(0,90,length.out=544)

plot(x,h,
     xlab = "Age (Predictor)",
     ylab = "Height (Outcome)",
     main = "Scatter plot of  !Kung people with 100 regression lines taken from posterior",
     xlim=c(0,90),
     ylim=c(-30,180)
)#scatter plot 

library(rstan)

# Modeling STAN.
model <- stan(model_code = "
data{
  vector[544] h;//likelihood variable for height
  real w_bar;//mean age in the dataset
  vector[544] w;//age of the person
}

parameters{
  real a;//alpha prior parameter for mean
  real b;//beta prior parameter for mean
  real<lower=0, upper=50>sigma; //prior parameter likelihood
}
model{
  vector[544] mu;
  sigma~uniform(0,45);//std deviation of age
  b~normal(0,10);//as age increases, value multipled by beta
  a~normal(90,1);//usual range of age of people
  for(i in 1:544){
    mu[i]=a+b*(w[i]-w_bar);
  }
  h~normal(mu,sigma);//final likelihood computation
}
", data = list(h=h, w_bar=w_bar,w=w), iter=500,chains=4)

params <- extract(model)

for (j in 1:100){
  #parameters from posterior
  a<-params$a[j] #alpha values
  b<-params$b[j] #beta values
  mu<-a+b*(w-w_bar) #functional relationship
  lines(w,mu,col=rgb(1,0,0,alpha=0.2)) #overlay
}
