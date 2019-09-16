# struct GPModel{R,C}
#   return_code::R
#   chain_results::C
# end

function gp_inference(prob::DiffEqBase.DEProblem,t,data,cov)
  @model function param_inference
    # return y, x', x

  end
end
