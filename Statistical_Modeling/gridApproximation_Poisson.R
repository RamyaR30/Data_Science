
''' We have the data Y with 0, 0, 1, 2, 0, 2, 2, 1 and 1. It follows a Poisson distribution. We can define a simple
model for estimating the lambda parameter of the Poisson distribution as:
Y ∼ P oisson(lambda) [likelihood]
lambda ∼ Uniform(0, 4) [prior]
Use a grid approximation to compute the posterior for the model with the data Y . Produce a plot to visualize
the posterior.'''
 

# Simulated data.
set.seed(1)
n <- 9
D <- rpois(n, lambda = 0.7)

# The lambda 'grid'.
lambdas <- seq(0, 4, length.out = 101)

# Producing the posterior, i.e., that lambda has produced this data.
posterior <- sapply(lambdas, function(lambda) {
  prod(dpois(D, lambda)) * dunif(lambda, 0, 4)
})

plot(lambdas, posterior, type = "l")