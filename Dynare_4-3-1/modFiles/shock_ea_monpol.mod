@#define steady = 0

@#include "init.mod"

@#include "symdecls.mod"

@#include "modeqs.mod"

load_params_and_steady_state('eagle_steady.txt');

steady(solve_algo = 5, markowitz = 5);

shocks;
var EA_epsr;
periods 1;
values 0.01;
end;

simul(periods = 600, stack_solve_algo = 5, markowitz = 2);

plot((EAA_r(1:200,1)-EAA_r(1,1))*100);
title('EA interest rate')
ylabel('p.p. deviation from steady state')

