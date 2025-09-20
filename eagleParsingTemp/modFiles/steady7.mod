// all options relevant for the homothopy set up commented out
/*
options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;
*/

@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_stage_trade.txt');

// filters the output to show only the equations where the residual is significantly different from zero, highlighting potential problems.
resid(non_zero);

// Computes/verifies the steady state.
steady;

// Verifies local stability (eigenvalues of the linearized system).
check;

// check residuals again
resid(non_zero);
