# struct GPModel{R,C}
#   return_code::R
#   chain_results::C
# end

function gp_inference(prob::DiffEqBase.DEProblem,t,data,phi_function::Stheno.MeanFunction,
  , x_given_phi;
    phi_kernel::Stheno.Kernel = eq(), theta_kernel::Stheno.Kernel = eq(), sigma = 1.0, Lₚ = 1000, kwargs...)
  # phi_kernel =
  @model function param_inference()

    ϕ = GP(phi_function, phi_kernel)
    θ = GP(theta_function, theta_kernel)
    x = x_given_phi(phi)
    f = prob.f
    ẋ = prob.f(x, θ)
    y = x + GP(Noise()) * sigma
    # x, ẋ involves data somehow

    return y, x, ẋ, θ, ϕ
  end

  y, x, ẋ, ϕ, θ = param_inference()

  (θ⁰, ϕ⁰) =

  for j = 1:Lp

  end
  return ̂θ, ̂ϕ
end
