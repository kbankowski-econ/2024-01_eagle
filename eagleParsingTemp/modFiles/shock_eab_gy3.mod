@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_stage_trade.txt');

AT_rhoig=0; //if we don't want persistent shock
BE_rhoig=0; //if we don't want persistent shock
FI_rhoig=0; //if we don't want persistent shock
FR_rhoig=0; //if we don't want persistent shock
DE_rhoig=0; //if we don't want persistent shock
GR_rhoig=0; //if we don't want persistent shock
IT_rhoig=0; //if we don't want persistent shock
NL_rhoig=0; //if we don't want persistent shock
PT_rhoig=0; //if we don't want persistent shock
ES_rhoig=0; //if we don't want persistent shock
RA_rhoig=0; //if we don't want persistent shock

steady(solve_algo = 5, markowitz = 5);

shocks;
var AT_epsgi;
periods 1:12;
values 0.01;
var BE_epsgi;
periods 1:12;
values 0.01;
var FI_epsgi;
periods 1:12;
values 0.01;
var FR_epsgi;
periods 1:12;
values 0.01;
var DE_epsgi;
periods 1:12;
values 0.01;
var GR_epsgi;
periods 1:12;
values 0.01;
var IT_epsgi;
periods 1:12;
values 0.01;
var NL_epsgi;
periods 1:12;
values 0.01;
var PT_epsgi;
periods 1:12;
values 0.01;
var ES_epsgi;
periods 1:12;
values 0.01;
var RA_epsgi;
periods 1:12;
values 0.01;
end;

perfect_foresight_setup(periods = 100);
perfect_foresight_solver(stack_solve_algo=0);