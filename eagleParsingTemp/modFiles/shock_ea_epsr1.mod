@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_govInv_refined.txt');

EAA_phirr=0; //if we don't want persistent shock 
EAB_phirr=0; //if we don't want persistent shock
EAC_phirr=0; //if we don't want persistent shock
EAD_phirr=0; //if we don't want persistent shock 
EAE_phirr=0; //if we don't want persistent shock 
EAF_phirr=0; //if we don't want persistent shock 
EAG_phirr=0; //if we don't want persistent shock 
EAH_phirr=0; //if we don't want persistent shock 
EAI_phirr=0; //if we don't want persistent shock 
EAJ_phirr=0; //if we don't want persistent shock 
EAK_phirr=0; //if we don't want persistent shock
EAL_phirr=0; //if we don't want persistent shock 
EAM_phirr=0; //if we don't want persistent shock

steady(solve_algo = 5, markowitz = 5);

shocks;
var EA_epsr;
periods 1:4;
values 0.01;
end;

perfect_foresight_setup(periods = 100);
perfect_foresight_solver(stack_solve_algo=0);