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
EAA_alphat, 0.3;
RW_alphat,  0.3;
US_alphat,  0.3;
EAB_alphat, 0.3;
EAC_alphat, 0.3;
EAD_alphat, 0.3;
EAE_alphat, 0.3;
end;
steady(homotopy_steps = 5);

// Productivity of public capital
disp('alphag')
homotopy_setup;
EAA_alphag, 0.05;
US_alphag,  0.05;
RW_alphag,  0.05;
EAB_alphag, 0.05;     
EAC_alphag, 0.05;     
EAD_alphag, 0.05;     
EAE_alphag, 0.05;     
end;
steady(homotopy_steps = 5);

disp('iy')

@#for co in countries
    change_type(parameters) @{co}_iy;
    change_type(var) @{co}_psit;
@#endfor

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

save_params_and_steady_state('eagle_steady_govInv.txt');
