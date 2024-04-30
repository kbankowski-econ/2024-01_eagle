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
EAA_epsilonm, -0.75;
US_epsilonm,  -0.75;
RW_epsilonm,  -0.75;
EAB_epsilonm, -0.75;
EAC_epsilonm, -0.75;
EAD_epsilonm, -0.75;
EAE_epsilonm, -0.75;
end;
steady(homotopy_steps = 5);


// Calibration of consumption-based velocity (based on MSN data and SGU, respectively)

disp('vi')
homotopy_setup;
EAA_vi, 2.38;
US_vi,  2.38;
RW_vi,  2.38;
EAB_vi, 2.38;
EAC_vi, 2.38;
EAD_vi, 2.38;
EAE_vi, 2.38;
end;
steady(homotopy_steps = 5);

// Calibration of nominal investment-to-output ratio

disp('iy')
homotopy_setup;
EAA_iy, 0.20;
US_iy,  0.20;
RW_iy,  0.20;
EAB_iy, 0.20;
EAC_iy, 0.20;
EAD_iy, 0.20;
EAE_iy, 0.20;
end;
steady(homotopy_steps = 5, maxit=20);

// Trade matrix

disp('Trade matrix')
homotopy_setup;

@#include "trade_matrix_values.mod"

end;
steady(homotopy_steps = 15);

//---------------------------------------------------------//
// Change parameters that appear only in the dynamic model //
//---------------------------------------------------------//

// Fiscal policy rule
EAA_phitb = 0.10;
US_phitb  = 0.10;
RW_phitb  = 0.10;
EAB_phitb = 0.10;
EAC_phitb = 0.10;
EAD_phitb = 0.10;
EAE_phitb = 0.10;

// Monetary policy rule
EA_phirr  = 0.87;
EA_phirpi = 1.70;
EA_phirgy = 0.10;
US_phirr  = 0.87;
US_phirpi = 1.70;
US_phirgy = 0.10;
RW_phirr  = 0.87;
RW_phirpi = 1.70;
RW_phirgy = 0.10;

// Adjustment and transaction cost
EAA_gammai1 = 6.00;
US_gammai1  = 4.00;
RW_gammai1  = 4.00;
EAB_gammai1 = 6.00; 
EAC_gammai1 = 6.00; 
EAD_gammai1 = 6.00; 
EAE_gammai1 = 6.00; 

EAA_gammau2 = 2000;
US_gammau2  = 2000;
RW_gammau2  = 2000;
EAB_gammau2 = 2000; 
EAC_gammau2 = 2000; 
EAD_gammau2 = 2000; 
EAE_gammau2 = 2000; 

EAA_gammaimc1 = 2.00;
US_gammaimc1  = 2.00;
RW_gammaimc1  = 2.00;
EAB_gammaimc1 = 2.00;
EAC_gammaimc1 = 2.00;
EAD_gammaimc1 = 2.00;
EAE_gammaimc1 = 2.00;

EAA_gammaimi1 = 1.00;
US_gammaimi1  = 1.00;
RW_gammaimi1  = 1.00;
EAB_gammaimi1 = 1.00;
EAC_gammaimi1 = 1.00;
EAD_gammaimi1 = 1.00;
EAE_gammaimi1 = 1.00;

EAA_gammab1 = 0.01;
RW_gammab1  = 0.01;
EAB_gammab1 = 0.01;
EAC_gammab1 = 0.01;
EAD_gammab1 = 0.01;
EAE_gammab1 = 0.01;

save_params_and_steady_state('eagle_steady.txt');
