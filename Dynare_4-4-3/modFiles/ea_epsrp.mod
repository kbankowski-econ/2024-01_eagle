@#define steady = 0

@#include "init.mod"
options_.maxit_ = 30;
@#include "symdecls.mod"

@#include "modeqs.mod"

load_params_and_steady_state('eagle_steady.txt');

steady(solve_algo = 5, markowitz = 5);

shocks;
%var EAB_epsrp;
var EAB_epsrp;
periods 1;
values 0.0025;
var EAA_epsrp; %Original
periods 1;
values 0.0025;
end;

simul(periods = 1000, stack_solve_algo = 5, markowitz = 5);