//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls_govCo.mod"

@#include "modeqs_govCo.mod"

load_params_and_steady_state('eagle_steady_govCo_stage0.txt');

resid(non_zero);


// The same parameter values like in the params.mod; just to check the steady state solution
disp('alphat')
homotopy_setup;
EAA_alphat, 0.3;
RW_alphat,  0.3;
US_alphat,  0.3;
EAB_alphat, 0.3;
EAC_alphat, 0.3;
EAD_alphat, 0.3;
EAE_alphat, 0.3;
end;
steady(homotopy_steps = 5);

save_params_and_steady_state('eagle_steady_govCo.txt');
