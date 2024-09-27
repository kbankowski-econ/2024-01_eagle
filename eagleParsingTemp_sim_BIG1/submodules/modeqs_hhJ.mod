// Utility
@{co}_utilj = 
@#if sigma_equals_one[i]
@{co}_zcon*log(@{co}_cj-@{co}_kappa*@{co}_cj(-1))-1/(1+@{co}_zeta)*@{co}_nj^(1+@{co}_zeta)+@{co}_beta*@{co}_utilj(+1)
@#else
@{co}_zcon*1/(1-@{co}_sigma)*(@{co}_cj-@{co}_kappa*@{co}_cj(-1))^(1-@{co}_sigma)-1/(1+@{co}_zeta)*@{co}_nj^(1+@{co}_zeta)+@{co}_beta*@{co}_utilj(+1)
@#endif
;

// Marginal utility of consumption
@{co}_lambdaj*(1+@{co}_tauc+@{co}_gammavj+@{co}_vj*@{co}_gammavjder) = @{co}_zcon*(@{co}_cj-@{co}_kappa*@{co}_cj(-1))^(-@{co}_sigma);