# linear regression example with julia
#
# see also Turing.jl documentation on website
# https://turinglang.org/docs/tutorials/05-linear-regression/
#
# ds - 2024-12-17

using Turing
using Distributions
using StatsPlots

# make some simulated data for a simple linear regression example
true_a, true_b, noise_σ = (2.3, 5.0, 3.15)

data_x = collect(0:0.1:5)
true_y = data_x * true_b .+ true_a
noise_d = Normal(0, noise_σ)
noise = rand(noise_d, size(data_x))
data_y = true_y .+ noise
scatter(data_x, data_y , marker=:dot)

# define the model 
@model function linreg(x)
    ## Priors
    # θ ~ Prior
    α ~ Normal(0, 1)
    β ~ Normal(0, 1)
    σ² ~ Truncated(Normal(0, 5), 0, Inf)

    ## Likelihood
    # 𝒟 ~ Likelihood( θ ) 
    y ~ MvNormal( β * x .+ α, σ²)
end

# instantiate model
# condition model on the data
# model = model | (𝒟)
model = linreg(data_x) | (y = data_y, )

nSamples = 2000
s = sample(model, NUTS(), nSamples)

# plot the chains and diagnostics
plot(s)