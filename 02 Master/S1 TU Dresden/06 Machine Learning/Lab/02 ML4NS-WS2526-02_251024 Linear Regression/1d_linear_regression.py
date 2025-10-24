# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .py
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.17.3
#   kernelspec:
#     display_name: Python 3 (ipykernel)
#     language: python
#     name: python3
# ---

# %% [markdown]
# # 1D linear regression plots

# %%
import matplotlib.pyplot as plt
import numpy as np

np.random.seed(42) #for reproducibility


# %% [markdown]
# Let's generate some fixed values for $x$.

# %%
nsamples=20
xmax = 100
step = xmax // nsamples
x = np.arange(0,xmax,step)
x

# %% [markdown]
# For the sake of the argument, we generate two random values for $\beta$.

# %%
beta = np.random.uniform(0,20, size=2)
print(", ".join([f"beta_{it} = "+str(beta[it]) for it in range(2)]))

# %% [markdown]
# We now also need our random variable $\varepsilon$. We use the `randn` method which returns samples from a normal distribution $\mathcal{N}(0,1)$.

# %%
sigma_true = 50
epsilon = np.random.randn(nsamples)*sigma_true
epsilon

# %% [markdown]
# Finally, we build the data generating process and calculate our observations $y$.

# %%
y = ...
y

# %%
fig, ax = plt.subplots(1,1)
ax.scatter(x,y,label="data")
ax.plot([0,x[-1]],[beta[0],beta[0]+beta[1]*x[-1]],'--',label="data generating process",color="grey")
ax.legend()
ax.set_xlabel("x")
ax.set_ylabel("y")

fig.savefig("1n_regression.pdf")
fig.savefig("1n_regression.svg")

# %% [markdown]
# ## Estimate $\hat{\beta}_0$ and $\hat{\beta}_1$
#
# Use the formulae from the lecture to calculate the two estimators $\hat{\beta}_0$ and $\hat{\beta}_1$.

# %%
bar_x = np.mean(x)
bar_y = np.mean(y)

beta_1_hat = ...
beta_0_hat = ...

print(f"beta_0_hat = {beta_0_hat} and beta_1_hat = {beta_1_hat}")

# %%
fig, ax = plt.subplots(1,1)
ax.scatter(x,y,label="data")
ax.plot([0,x[-1]],[beta[0],beta[0]+beta[1]*x[-1]],'--',label="data generating process",color="grey")
ax.plot([0,x[-1]],[beta_0_hat,beta_0_hat+beta_1_hat*x[-1]],'--',label="LS prediction",color="green")
ax.legend()
ax.set_xlabel("x")
ax.set_ylabel("y")

fig.savefig("1n_regression_hat.pdf")
fig.savefig("1n_regression_hat.svg")

# %% [markdown]
# ## variances of $\hat{\beta}_0$ and $\hat{\beta}_1$
#
# Use the formulae from the lecture to calculate the two estimators $\hat{\beta}_0$ and $\hat{\beta}_1$.

# %%
beta_0_var = ...
beta_1_var = ...

print(f"beta_0_hat = {beta_0_hat} +/- {np.sqrt(beta_0_var)}, true value beta_0 = {beta[0]}")
print(f"beta_1_hat = {beta_1_hat} +/- {np.sqrt(beta_1_var)}, true value beta_1 = {beta[1]}")

# %%
fig, ax = plt.subplots(1,1)
ax.plot([0,x[-1]],[beta[0],beta[0]+beta[1]*x[-1]],'--',label="data generating process",color="grey")
ax.plot([0,x[-1]],[beta_0_hat,beta_0_hat+beta_1_hat*x[-1]],'--',label="LS prediction",color="green")

upper = (beta_0_hat+np.sqrt(beta_0_var))+(beta_1_hat+np.sqrt(beta_1_var))*x
lower = (beta_0_hat-np.sqrt(beta_0_var))+(beta_1_hat-np.sqrt(beta_1_var))*x

ax.fill_between(x,upper,lower,label="+/- sigma")
ax.scatter(x,y,label="data")

ax.legend()
ax.set_xlabel("x")
ax.set_ylabel("y")

fig.savefig("1n_regression_hat_pm_std.pdf")
fig.savefig("1n_regression_hat_pm_std.svg")

# %%
