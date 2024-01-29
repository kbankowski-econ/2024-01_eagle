@#define steady = 0

@#include "init_EAGLE_Fiscal.mod"
options_.maxit_ = 50;
options_.stack_solve_algo = 5;

@#include "symdecls_EAGLE_Fiscal.mod"

@#include "modeqs_EAGLE_Fiscal.mod"

load_params_and_steady_state('eagle_steady_EAGLE_Fiscal.txt');

steady(solve_algo = 5, markowitz = 3);

shocks;
var EAB_epsgc;
periods 1;
values 0.01;

end;

simul(periods = 1000);