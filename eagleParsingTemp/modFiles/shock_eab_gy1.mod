@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_govInv_refined.txt');

EAB_rhocg=0; //if we don't want persistent shock

steady(solve_algo = 5, markowitz = 5);

/*
shocks;
var EAA_epsgc;
periods 1:4;
values 0.01;
var EAB_epsgc;
periods 1:4;
values 0.01;
var EAC_epsgc;
periods 1:4;
values 0.01;
var EAD_epsgc;
periods 1:4;
values 0.01;
var EAE_epsgc;
periods 1:4;
values 0.01;
var EAF_epsgc;
periods 1:4;
values 0.01;
var EAG_epsgc;
periods 1:4;
values 0.01;
var EAH_epsgc;
periods 1:4;
values 0.01;
var EAI_epsgc;
periods 1:4;
values 0.01;
var EAJ_epsgc;
periods 1:4;
values 0.01;
var EAK_epsgc;
periods 1:4;
values 0.01;
var EAL_epsgc;
periods 1:4;
values 0.01;
var EAM_epsgc;
periods 1:4;
values 0.01;
end;

perfect_foresight_setup(periods = 100);
perfect_foresight_solver(stack_solve_algo=4);
*/