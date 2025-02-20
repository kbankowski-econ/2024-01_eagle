//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls.mod"

// Flip variables

@#for co in countries
change_type(parameters) @{co}_epsilonm @{co}_vi @{co}_iy @{co}_imcy @{co}_imiy @{co}_imcgy @{co}_imigy;
change_type(var) @{co}_gammav2 @{co}_gammav1 @{co}_psit @{co}_nutc @{co}_nuti @{co}_nutcg @{co}_nutig;
@#endfor

@#for co in countries  - [ countries[ctryNumber]]
change_type(parameters) @{co}_tby;
change_type(var) @{co}_bfytarget;
@#endfor

@#for i in 1:ctryNumber
@#include "dynamicCtryList7.mod"
@#for it in countries - [ countries[i], coResid]
change_type(parameters) @{countries[i]}@{it}_imcy @{countries[i]}@{it}_imiy @{countries[i]}@{it}_imcgy @{countries[i]}@{it}_imigy;
change_type(var) @{countries[i]}@{it}_numc @{countries[i]}@{it}_numi @{countries[i]}@{it}_numcg @{countries[i]}@{it}_numig;
@#endfor
@#endfor

@#include "modeqs.mod"

load_params_and_steady_state('eagle_steady_govInv.txt');

// Trade matrix

disp('Trade matrix')
homotopy_setup;

@#include "trade_matrix_values_calibrated_new.mod"

end;
steady(homotopy_steps = 15);

save_params_and_steady_state('eagle_steady_stage_trade.txt');