options_.maxit_ = 240
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;


@#define steady = 1

@#include "init_EAGLE_Fiscal.mod"

@#include "symdecls_EAGLE_Fiscal.mod"

@#define sigma_equals_one = [ 1,1,1,1 ]  

@#include "modeqs_EAGLE_Fiscal.mod"

@#include "params_EAGLE_Fiscal.mod"