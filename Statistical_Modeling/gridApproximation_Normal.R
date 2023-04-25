
'''We have the data Y with 0.3120639, 0.5550930, 0.2493114 and 0.9785842. It follows a normal distribution. We
can define a simple model for estimating the mu (mean) and sigma (sd) parameter of the normal distribution
as:
Y ∼ Normal(mu, sigma) [likelihood]
mu ∼ Uniform(0, 1) [prior]
sigma ∼ Uniform(0, 1) [prior]
Use grid approximation to compute the posterior for the model with the data Y . Produce a plot of the posterior.
Submit the plot and the code.'''


library(rethinking)

# Simulating data.
set.seed(1)
n <- 4
D <- rnorm(n, mean = 0.5, sd = 0.3)

# Posterior function (taking mu and sigma).
U <- function(mu, sigma) {
  dunif(mu, 0, 1) *
    dunif(sigma, 0, 1) *
    prod(dnorm(D, mu, sigma))
}

# Mu and sigma 'grid'.
mus <- seq(-0, 1, length.out = 100)
sigmas <- seq(0, 1, length.out = 100)
grid <- expand.grid(mu = mus, sigma = sigmas)

# Compute posterior for grid points.
posterior <- sapply(seq_len(nrow(grid)), function(i) U(grid$mu[i], grid$sigma[i]))

# Plot.
contour_xyz(grid$mu, grid$sigma, posterior)