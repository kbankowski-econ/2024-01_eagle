// --+ options: stochastic, json=compute +--

@#define steady = 0

@#include "init.mod"

@#include "symdecls.mod"

@#define sigma_equals_one = [ 1, 1, 1, 1, 1, 1, 1 ] 

@#include "modeqs.mod"

@#include "params.mod"