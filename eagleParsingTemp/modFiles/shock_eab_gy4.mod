@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_stage_trade.txt');

RA_rhocg=0; //if we don't want persistent shock
AT_rhocg=0; //if we don't want persistent shock
BE_rhocg=0; //if we don't want persistent shock
ES_rhocg=0; //if we don't want persistent shock
FI_rhocg=0; //if we don't want persistent shock
FR_rhocg=0; //if we don't want persistent shock
GR_rhocg=0; //if we don't want persistent shock
IT_rhocg=0; //if we don't want persistent shock
NL_rhocg=0; //if we don't want persistent shock
PT_rhocg=0; //if we don't want persistent shock
DE_rhocg=0; //if we don't want persistent shock
RU_rhocg=0; //if we don't want persistent shock

steady(solve_algo = 5, markowitz = 5);

shocks;
var RA_epsgc;
periods 1:4;
values 0.01;
var AT_epsgc;
periods 1:4;
values 0.01;
var BE_epsgc;
periods 1:4;
values 0.01;
var ES_epsgc;
periods 1:4;
values 0.01;
var FI_epsgc;
periods 1:4;
values 0.01;
var FR_epsgc;
periods 1:4;
values 0.01;
var GR_epsgc;
periods 1:4;
values 0.01;
var IT_epsgc;
periods 1:4;
values 0.01;
var NL_epsgc;
periods 1:4;
values 0.01;
var PT_epsgc;
periods 1:4;
values 0.01;
var DE_epsgc;
periods 1:4;
values 0.01;
var RU_epsgc;
periods 1:4;
values 0.01;
end;

perfect_foresight_setup(periods = 100);
perfect_foresight_solver(stack_solve_algo=0);