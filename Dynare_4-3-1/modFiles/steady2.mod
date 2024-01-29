options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls.mod"

// Flip variables

@#for co in countries
change_type(parameters) @{co}_epsilonm @{co}_vi @{co}_iy @{co}_imcy @{co}_imiy;
change_type(var) @{co}_gammav2 @{co}_gammav1 @{co}_taukbar @{co}_nutc @{co}_nuti;
@#endfor

@#for i in 1:4
@# for it in countries - [ countries[i], countries3[i] ]
change_type(parameters) @{countries[i]}@{it}_imcy @{countries[i]}@{it}_imiy;
change_type(var) @{countries[i]}@{it}_numc @{countries[i]}@{it}_numi;
@# endfor
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
end;
steady(homotopy_steps = 5);


// Calibration of consumption-based velocity (based on MSN data and SGU, respectively)

disp('vi')
homotopy_setup;
EAA_vi, 2.38;
US_vi,  2.38;
RW_vi,  2.38;
EAB_vi, 2.38;
end;
steady(homotopy_steps = 5);

// Calibration of nominal investment-to-output ratio

disp('iy')
homotopy_setup;
EAA_iy, 0.20;
US_iy,  0.20;
RW_iy,  0.20;
EAB_iy, 0.20;
end;
steady(homotopy_steps = 5);

// Trade matrix

disp('Trade matrix')
homotopy_setup;
EAA_imcy, 0.2010;
EAB_imcy, 0.1839;
EAA_imiy, 0.0366;
EAB_imiy, 0.0920;
RW_imcy,  0.0860;
US_imcy,  0.0726;
RW_imiy,  0.0630;
US_imiy,  0.0420;

EABEAA_imcy, 0.0872;
EABRW_imcy, 0.0852;
EABEAA_imiy, 0.0436;
EABRW_imiy, 0.0426;
EAAEAB_imcy, 0.0305;
EAAUS_imcy, 0.0047;
EAAEAB_imiy, 0.0221;
EAAUS_imiy, 0.0065;
RWEAB_imcy, 0.0106;
RWUS_imcy, 0.0400;
RWEAB_imiy, 0.0073;
RWUS_imiy, 0.0338;
USEAA_imcy, 0.0078;
USRW_imcy, 0.0617;
USEAA_imiy, 0.0037;
USRW_imiy, 0.0364;
end;
steady(homotopy_steps = 15);

// Sizes

disp('size')
homotopy_setup;
EAA_size, 0.16;
US_size,  0.31;
RW_size,  0.47;
EAB_size, 0.06;
end;
steady(homotopy_steps = 5);


//---------------------------------------------------------//
// Change parameters that appear only in the dynamic model //
//---------------------------------------------------------//

// Fiscal policy rule
EAA_phitb = 0.10;
US_phitb  = 0.10;
RW_phitb  = 0.10;
EAB_phitb = 0.10;

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

EAA_gammau2 = 2000;
US_gammau2  = 2000;
RW_gammau2  = 2000;
EAB_gammau2 = 2000; 

EAA_gammaimc1 = 2.00;
US_gammaimc1  = 2.00;
RW_gammaimc1  = 2.00;
EAB_gammaimc1 = 2.00;

EAA_gammaimi1 = 1.00;
US_gammaimi1  = 1.00;
RW_gammaimi1  = 1.00;
EAB_gammaimi1 = 1.00;

EAA_gammab1 = 0.01;
RW_gammab1  = 0.01;
EAB_gammab1 = 0.01;

save_params_and_steady_state('eagle_steady.txt');
