@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_govInv_refined.txt');

steady(solve_algo = 5, markowitz = 5);

shocks;
var EAE_epsgc;
periods 1:1;
values 0.01;
end;

perfect_foresight_setup(periods = 100);
perfect_foresight_solver(stack_solve_algo=0);