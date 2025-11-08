@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_stage_trade.txt');

AT_rhoig = 0; //if we don't want persistent shock
BE_rhoig = 0; //if we don't want persistent shock
FI_rhoig = 0; //if we don't want persistent shock
FR_rhoig = 0; //if we don't want persistent shock
NL_rhoig = 0; //if we don't want persistent shock
ES_rhoig = 0; //if we don't want persistent shock
GR_rhoig = 0; //if we don't want persistent shock
IT_rhoig = 0; //if we don't want persistent shock
PT_rhoig = 0; //if we don't want persistent shock
DE_rhoig = 0; //if we don't want persistent shock


steady(solve_algo = 5, markowitz = 5);

shocks;
    @#include "ngeu_shock_values.mod"
end;

perfect_foresight_setup(periods = 200);
perfect_foresight_solver(stack_solve_algo=0);