@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_govInv_refined.txt');

steady;

shocks;
var EAB_epsgi;
periods 1;
values 0.01;
end;

stoch_simul(order = 1,nograph, IRF=90);