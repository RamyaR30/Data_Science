'''QUESTION: 
improving fit --> One option is to do a polynomial regression. In this case,
the linear model adds new predictors variables, i.e., squares or cubes of predictor variable age (i.e., age2 and
age3). This implies that you need additional parameters to model the linear combination of the variables. You
may introduce new parameters named beta1, beta2 and beta3. Fit the model adding age2
(and optionally alsothe age3) to the linear part of the model and provide the same artifacts (plot and code)'''



data <- read.csv("data.csv")

x=data$age #x-axis has age
h=data$height #y-axis has height 

w_bar<-mean(x)
#w<-x #age considering child to very old
w<-seq(0,90,length.out=544)

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
  real b1;
  real b2;
  real<lower=0, upper=50>sigma; //prior parameter likelihood
}
model{
  vector[544] mu;
  sigma~uniform(0,45);//std deviation of age
  b1~normal(0,10);//as age increases, value multipled by beta
  b2~normal(0,10);
  a~normal(90,1);//usual range of age of people
  for(i in 1:544){
    mu[i]=a+b1*(w[i]-w_bar)+b2*(w[i]-w_bar)^2;
  }
  h~normal(mu,sigma);//final likelihood computation
}
", data = list(h=h, w_bar=w_bar,w=w), iter=500,chains=1)

params <- extract(model)

plot(x = data$age, y = data$height, ylim = c(-40, 180), xlim = c(0, 90), main = "Polynominal Regression of height and age ", xlab = 'Age^2', ylab = 'Height')
for (j in 1:100) {
  # Parameters from the posterior (described by samples).
  a <- samples$a[j] # alpha
  b1 <- samples$b1[j] # beta1
  b2 <- samples$b2[j] # beta2
  # Implementing the functional relationship.
  mu <- a + b1 * (w-w_bar) + b2 * (w-w_bar)^2
  # Plotting the line (as overlay).
  lines(w, mu, col = rgb(1,0,0, alpha = 0.2))
}


