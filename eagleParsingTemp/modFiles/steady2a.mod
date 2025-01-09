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

@#for i in 1:ctryNumber
@#include "dynamicCtryList7.mod"
@#for it in countries - [ countries[i], coResid]
change_type(parameters) @{countries[i]}@{it}_imcy @{countries[i]}@{it}_imiy @{countries[i]}@{it}_imcgy @{countries[i]}@{it}_imigy;
change_type(var) @{countries[i]}@{it}_numc @{countries[i]}@{it}_numi @{countries[i]}@{it}_numcg @{countries[i]}@{it}_numig;
@#endfor
@#endfor

@#include "modeqs.mod"

load_params_and_steady_state('eagle_steady_stage1.txt');

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

// Calibration of nominal investment-to-output ratio

disp('iy')
homotopy_setup;
@#for co in countries
@{co}_iy, 0.2;
@#endfor
end;
steady(homotopy_steps = 5, maxit=20);

save_params_and_steady_state('eagle_steady_stage2a.txt');