@{co}_ccesj^(1-1/@{co}_mucces) = (@{co}_nucces)^(1/@{co}_mucces)*@{co}_cj^(1-1/@{co}_mucces)+(1-@{co}_nucces)^(1/@{co}_mucces)*@{co}_cg^(1-1/@{co}_mucces);

// Utility
@{co}_utilj = 
@#if sigma_equals_one[i]
@{co}_zcon*log(@{co}_ccesj-@{co}_kappa*@{co}_ccesj(-1))-1/(1+@{co}_zeta)*(@{co}_nj)^(1+@{co}_zeta)+@{co}_beta*@{co}_utilj(+1)
@#else
@{co}_zcon*1/(1-@{co}_sigma)*(@{co}_ccesj-@{co}_kappa*@{co}_ccesj(-1))^(1-@{co}_sigma)-1/(1+@{co}_zeta)*(@{co}_nj)^(1+@{co}_zeta)+@{co}_beta*@{co}_utilj(+1)
@#endif
;

// Marginal utility of consumption
@{co}_dccj = ((@{co}_nucces)^(1/@{co}_mucces)*@{co}_cj^(1-1/@{co}_mucces)+(1-@{co}_nucces)^(1/@{co}_mucces)*@{co}_cg^(1-1/@{co}_mucces))^(1/(@{co}_mucces-1))*(@{co}_nucces^(1/@{co}_mucces))*(@{co}_cj^(-1/@{co}_mucces));

@{co}_lambdaj*(1+@{co}_tauc+@{co}_gammavj+@{co}_vj*@{co}_gammavjder) = @{co}_zcon*(@{co}_ccesj-@{co}_kappa*@{co}_ccesj(-1))^(-@{co}_sigma)*@{co}_dccj;
