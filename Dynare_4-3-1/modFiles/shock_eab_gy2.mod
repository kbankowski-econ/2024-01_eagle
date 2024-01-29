@#define steady = 0

@#include "init.mod"

@#include "symdecls.mod"

@#include "modeqs.mod"

load_params_and_steady_state('eagle_steady.txt');

steady(solve_algo = 5, markowitz = 5);

shocks;
var EAB_epsg;
periods 1 2:4;
values 0.01 0.001;
end;

simul(periods = 200, stack_solve_algo = 5, markowitz = 5);

plot((EAB_gy-EAB_gy(1,1))*100);
title('EAB GY')
ylabel('p.p. deviation from steady state')