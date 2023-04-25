'''We have the data Y with 0.3120639, 0.5550930, 0.2493114 and 0.9785842. It follows a normal distribution. We
can define a simple model for estimating the mu (mean) and sigma (sd) parameter of the normal distribution
as:
Y ∼ Normal(mu, sigma) [likelihood]
mu ∼ Uniform(0, 1) [prior]
sigma ∼ Uniform(0, 1) [prior]
Use grid approximation to compute the posterior for the model with the data Y . Produce a plot of the posterior.
Submit the plot and the code.'''

import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import poisson
from scipy.stats import uniform
from scipy.stats import norm

# Data
data = np.array([0.3120639, 0.5550930, 0.2493114, 0.9785842])

# Grid.
mus = np.linspace(0, 1, num=100)
sigmas = np.linspace(0, 1, num=100)

x = []
y = []
z = []

# Grid and computation of the posterior.
for mu in mus:
    for sigma in sigmas:
        posterior = np.prod(norm.pdf(x=data, loc=mu, scale=sigma)) * uniform.pdf(mu, 0, 1) * uniform.pdf(sigma, 0, 1)

        x.append(mu)
        y.append(sigma)
        z.append(posterior)

# Plot using colors.
plt.scatter(x, y, c=z)
plt.show()
