// =============================================================================
// STEADY STATE HOMOTOPY METHOD - STAGE 4
// =============================================================================
//
// 1. Introducing meaningful government investment:
//    - alphag: Productivity of public capital (NaN → 0.05)
//    - nucces: Depretiation of public capital (NaN → 0.025)
//
// =============================================================================

//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_govInv_stage0.txt');

resid(non_zero);


// The same parameter values like in the params.mod; just to check the steady state solution
disp('alphat')
homotopy_setup;
@#for co in countries
@{co}_alphat, 0.3;
@#endfor
end;
steady(homotopy_steps = 5);

// Productivity of public capital
disp('alphag')
homotopy_setup;
@#for co in countries
@{co}_alphag, 0.1;
@#endfor  
end;
steady(homotopy_steps = 5);

save_params_and_steady_state('eagle_steady_govInv.txt');
