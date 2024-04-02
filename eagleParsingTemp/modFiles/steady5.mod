//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#for co in countries
    change_type(parameters) @{co}_iy;
    change_type(var) @{co}_psit;
@#endfor

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_govInv.txt');

disp('iy')

homotopy_setup;
EAA_iy, 0.21-EAA_igybar;
US_iy,  0.19-US_igybar;
RW_iy,  0.25-RW_igybar;
EAB_iy, 0.1906-EAB_igybar;  
EAC_iy, 0.1906-EAC_igybar;  
EAD_iy, 0.1906-EAD_igybar;  
EAE_iy, 0.1906-EAE_igybar;  
end;
steady(homotopy_steps = 5);

save_params_and_steady_state('eagle_steady_govInv_refined.txt');
