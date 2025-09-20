// =============================================================================
// STEADY STATE HOMOTOPY METHOD - STAGE 3
// =============================================================================
//
// 1. Introducing meaningful government consumption:
//    - mucces: Elastiticity of subst. between private and public consumption (NaN → 0.3)
//    - nucces: Quasi-share of private cons. (NaN → 0.75)
//
// =============================================================================

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
@#for co in countries
@{co}_alphat, 0.3;
@#endfor
end;
steady(homotopy_steps = 5);

save_params_and_steady_state('eagle_steady_govCo.txt');
