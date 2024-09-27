@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_govInv_refined.txt');

steady;

shocks;
var EAB_epsgi = (0.01)^2;
end;

stoch_simul(order=1, nocorr, nomoments, irf=16, nograph) EA_y;