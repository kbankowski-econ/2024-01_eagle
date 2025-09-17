//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls.mod"

// Flip variables

@#for co in countries
change_type(parameters) @{co}_epsilonm @{co}_vi;
change_type(var) @{co}_gammav2 @{co}_gammav1;
@#endfor

@#include "modeqs.mod"

load_params_and_steady_state('eagle_steady_stage1b.txt');

// Calibration of interest (semi-)elasticity of money demand

disp('epsilonm')
homotopy_setup;
@#for co in countries
@{co}_epsilonm, -0.75;
@#endfor
end;
steady(homotopy_steps = 5);


// Calibration of consumption-based velocity (based on MSN data and SGU, respectively)

disp('vi')
homotopy_setup;
@#for co in countries
@{co}_vi, 2.38;
@#endfor
end;
steady(homotopy_steps = 5);

save_params_and_steady_state('eagle_steady.txt');
