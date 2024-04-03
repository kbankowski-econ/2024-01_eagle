// Utility
@{co}_utili = 
@#if sigma_equals_one[i]
@{co}_zcon*log(@{co}_ci-@{co}_kappa*@{co}_ci(-1))-1/(1+@{co}_zeta)*(@{co}_ni)^(1+@{co}_zeta)+@{co}_beta*@{co}_utili(+1)
@#else
@{co}_zcon*1/(1-@{co}_sigma)*(@{co}_ci-@{co}_kappa*@{co}_ci(-1))^(1-@{co}_sigma)-1/(1+@{co}_zeta)*(@{co}_ni)^(1+@{co}_zeta)+@{co}_beta*@{co}_utili(+1)
@#endif
;

// Marginal utility of consumption
@{co}_lambdai*(1+@{co}_tauc+@{co}_gammavi+@{co}_vi*@{co}_gammavider) = @{co}_zcon*(@{co}_ci-@{co}_kappa*@{co}_ci(-1))^(-@{co}_sigma);