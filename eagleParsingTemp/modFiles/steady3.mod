//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls_govCo.mod"

@#include "modeqs_govCo.mod"

load_params_and_steady_state('eagle_steady_govCo_stage0.txt');

// The same parameter values like in the params.mod; just to check the steady state solution
disp('alphat')
homotopy_setup;
EAA_nucces, 0.75;
RW_nucces,  0.75;
US_nucces,  0.75;
EAB_nucces, 0.75;
EAC_nucces, 0.75;
EAD_nucces, 0.75;
EAE_nucces, 0.75;
end;
steady(homotopy_steps = 5);

save_params_and_steady_state('eagle_steady_govCo.txt');