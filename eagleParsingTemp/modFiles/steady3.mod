//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls_govCo.mod"

@#include "modeqs_govCo.mod"

load_params_and_steady_state('eagle_steady_govCo_stage0.txt');

save_params_and_steady_state('eagle_steady_govCo.txt');