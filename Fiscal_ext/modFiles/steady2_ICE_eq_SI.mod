options_.maxit_ = 250
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;


@#define steady = 1

@#include "init_ICE_eq_SI.mod"

@#include "symdecls_ICE_eq_SI.mod"

// Flip variables

//CALIBRATION OF PSIT AND OTHER 
@#for co in countries
change_type(parameters) @{co}_epsilonm @{co}_vi @{co}_iy @{co}_imcy @{co}_imiy;
change_type(var) @{co}_gammav2 @{co}_gammav1 @{co}_psit @{co}_nutc @{co}_nuti;
@#endfor


// CALIBRATION OF EAB_nux
@#for co in countries
@#if co=="EAB"
change_type(parameters) @{co}_imxy;
change_type(var) @{co}_nux;
@#endif
@#endfor

// CALIBRATION OF EAB_numi, EAB_numc, and EAB_numx
@#for i in 1:4
@# for it in countries - [ countries[i], countries3[i] ]
@#if i==2
change_type(parameters) @{countries[i]}@{it}_imcy @{countries[i]}@{it}_imiy @{countries[i]}@{it}_imxy;
change_type(var) @{countries[i]}@{it}_numc @{countries[i]}@{it}_numi @{countries[i]}@{it}_numx;
@#endif
@# endfor
@#endfor


@#include "modeqs_ICE_eq_SI.mod"

load_params_and_steady_state('eagle_steady_stage1_ICE_eq_SI.txt');


// Calibration of interest (semi-)elasticity of money demand

disp('epsilonm')
homotopy_setup;
EAA_epsilonm, -0.75;
US_epsilonm,  -0.75;
RW_epsilonm,  -0.75;
EAB_epsilonm, -0.75;
end;
steady(homotopy_steps = 30, solve_algo = 6);


// Calibration of consumption-based velocity (based on MSN data and SGU, respectively)

disp('vi')
homotopy_setup;
EAA_vi, 2.38;
US_vi,  2.38;
RW_vi,  2.38;
EAB_vi, 2.38;
end;
steady(homotopy_steps = 10);

// Calibration of nominal investment-to-output ratio

disp('iy')
homotopy_setup;
EAA_iy, 0.21;
US_iy,  0.19;
RW_iy,  0.25;
EAB_iy, 0.266998;  
end;
steady(homotopy_steps = 20);

// Trade matrix

disp('Trade matrix')
homotopy_setup;
EAA_imcy, 0.160;  
EAB_imcy, 0.1571;        
EAA_imiy, 0.090;  
EAB_imiy, 0.0886;
RW_imcy,  0.036;
US_imcy,  0.077;
RW_imiy,  0.045;
US_imiy,  0.076;
end;
steady(homotopy_steps = 150, solve_algo = 6);

// Import-content of exports for EAB
disp('Trade matrix - nux')
homotopy_setup;
EAB_imxy, 0.3672;
end;
steady(homotopy_steps = 350, solve_algo = 6);

disp('Trade matrix - numi, numc, numx')
homotopy_setup;
EABEAA_imcy, 0.1276756;
EABRW_imcy,  0.0274920;
EABEAA_imiy, 0.0734608;
EABRW_imiy,  0.0141124;
EABEAA_imxy, 0.2822529;
EABRW_imxy,  0.0793529;
end;
steady(homotopy_mode = 1, homotopy_steps = 50, solve_algo = 6);


// Sizes

disp('size')
homotopy_setup;
EAA_size, 0.198;
US_size,  0.31;
RW_size,  0.49;
EAB_size, 0.002;   
end;
steady(homotopy_mode =1, homotopy_steps = 220, solve_algo = 6);


//---------------------------------------------------------//
// Change parameters that appear only in the dynamic model //
//---------------------------------------------------------//

// Fiscal policy rule
EAA_phitb = 0.10;
US_phitb  = 0.10;
RW_phitb  = 0.10;
EAB_phitb = 0.10;

// Monetary policy rule
EA_phirr       = 0.87;
EA_phirgy      = 0.10;
EA_phirpi      = 1.70;

EAA_phirr  = 0.87;
EAA_phirpi = 1.70;
EAA_phirgy = 0.10;

US_phirr  = 0.87;
US_phirpi = 1.70;
US_phirgy = 0.10;

RW_phirr  = 0.87;
RW_phirpi = 1.70;
RW_phirgy = 0.10;

EAB_phirr  = 0.87;
EAB_phirpi = 1.70;
EAB_phirgy = 0.10;


// Adjustment and transaction cost
EAA_gammai1 = 6.00;   
US_gammai1  = 4.00;
RW_gammai1  = 4.00;
EAB_gammai1 = 1.8;

EAA_gammau2 = 2000;
US_gammau2  = 2000;
RW_gammau2  = 2000;
EAB_gammau2 = 2000; 

EAA_gammaimx1 = 2.00;
US_gammaimx1  = 2.00;
RW_gammaimx1  = 2.00;
EAB_gammaimx1 = 2.00;

EAA_gammaimc1 = 5.00;
US_gammaimc1  = 5.00;
RW_gammaimc1  = 5.00;
EAB_gammaimc1 = 2;

EAA_gammaimi1 = 2.00;
US_gammaimi1  = 2.00;
RW_gammaimi1  = 2.00;
EAB_gammaimi1 = 1;   

EAA_gammab1 = 0.01;
RW_gammab1  = 0.01;
EAB_gammab1 = 0.01;     

save_params_and_steady_state('eagle_steady_ICE_eq_SI.txt');
