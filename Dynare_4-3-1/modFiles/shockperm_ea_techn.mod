@#define steady = 0

@#include "init.mod"

@#include "symdecls.mod"

@#include "modeqs.mod"

load_params_and_steady_state('eagle_steady.txt');

options_.maxit_ = 100;
steady(solve_algo = 5, markowitz = 5);

endval;
EAA_epszn=0.01;
EAB_epszn=0.01;
end;

steady(solve_algo = 5, markowitz = 5);
simul(periods = 500, stack_solve_algo = 5, markowitz = 2);

