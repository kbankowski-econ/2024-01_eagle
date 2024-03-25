options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls.mod"

@#define sigma_equals_one = [ 1, 1, 1, 1, 1 ] 

@#include "modeqs.mod"

@#include "params.mod"

@#include "initval.mod"

// Technology

disp('alphat')
homotopy_setup;
EAA_alphat, 0.3;
RW_alphat,  0.3;
US_alphat,  0.3;
EAB_alphat, 0.3;
EAC_alphat, 0.3;
end;
steady(homotopy_steps = 5);


save_params_and_steady_state('eagle_steady_stage0.txt');
