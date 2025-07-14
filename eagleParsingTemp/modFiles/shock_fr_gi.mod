@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_stage_trade.txt');

FR_rhoig=0; //if we don't want persistent shock

steady(solve_algo = 5, markowitz = 5);

shocks;
var FR_epsgi;
periods 1:4;
values 0.01;
end;

perfect_foresight_setup(periods = 100);
perfect_foresight_solver(stack_solve_algo=0);