options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls.mod"

@#define sigma_equals_one = [ 1, 1, 1, 1, 1, 1, 1 ] 

@#include "modeqs.mod"

@#include "params.mod"

@#include "initval.mod"

// The same parameter values like in the params.mod; just to check the steady state solution
disp('alphat')
homotopy_setup;
EAA_alphat, 0.1;
RW_alphat,  0.1;
US_alphat,  0.1;
EAB_alphat, 0.1;
EAC_alphat, 0.1;
EAD_alphat, 0.1;
EAE_alphat, 0.1;
end;
steady(homotopy_steps = 5);


save_params_and_steady_state('eagle_steady_stage0.txt');
