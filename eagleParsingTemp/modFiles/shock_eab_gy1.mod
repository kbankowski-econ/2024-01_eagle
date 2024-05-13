@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_govInv_refined.txt');

EAA_rhotr=0; //if we don't want persistent shock
EAB_rhotr=0; //if we don't want persistent shock
EAC_rhotr=0; //if we don't want persistent shock
EAD_rhotr=0; //if we don't want persistent shock
EAE_rhotr=0; //if we don't want persistent shock
EAF_rhotr=0; //if we don't want persistent shock
EAG_rhotr=0; //if we don't want persistent shock
EAH_rhotr=0; //if we don't want persistent shock
EAI_rhotr=0; //if we don't want persistent shock
EAJ_rhotr=0; //if we don't want persistent shock
EAK_rhotr=0; //if we don't want persistent shock
EAL_rhotr=0; //if we don't want persistent shock
EAM_rhotr=0; //if we don't want persistent shock

steady(solve_algo = 5, markowitz = 5);

shocks;
var EAA_epstr;
periods 1:4;
values 0.01;
var EAB_epstr;
periods 1:4;
values 0.01;
var EAC_epstr;
periods 1:4;
values 0.01;
var EAD_epstr;
periods 1:4;
values 0.01;
var EAE_epstr;
periods 1:4;
values 0.01;
var EAF_epstr;
periods 1:4;
values 0.01;
var EAG_epstr;
periods 1:4;
values 0.01;
var EAH_epstr;
periods 1:4;
values 0.01;
var EAI_epstr;
periods 1:4;
values 0.01;
var EAJ_epstr;
periods 1:4;
values 0.01;
var EAK_epstr;
periods 1:4;
values 0.01;
var EAL_epstr;
periods 1:4;
values 0.01;
var EAM_epstr;
periods 1:4;
values 0.01;
end;

perfect_foresight_setup(periods = 100);
perfect_foresight_solver(stack_solve_algo=0);