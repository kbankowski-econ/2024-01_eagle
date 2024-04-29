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

resid(non_zero);

// The same parameter values like in the params.mod; just to check the steady state solution
disp('alphat')
homotopy_setup;
@#for co in countries
@{co}_alphat, 0.1;
@#endfor
end;
steady(homotopy_steps = 5);


save_params_and_steady_state('eagle_steady_stage0.txt');
