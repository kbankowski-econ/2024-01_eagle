@#define steady = 1

@#include "init_eq_SI.mod"
options_.maxit_ = 250;

@#include "symdecls_eq_SI.mod"

// Flip variables



// CALIBRATION OF PSIT AND OTHER 
@#for co in countries
change_type(parameters) @{co}_epsilonm @{co}_vi @{co}_iy @{co}_imcy @{co}_imiy;
change_type(var) @{co}_gammav2 @{co}_gammav1 @{co}_psit @{co}_nutc @{co}_nuti;
@#endfor


@#for i in 1:4
@# for it in countries - [ countries[i], countries3[i] ]
change_type(parameters) @{countries[i]}@{it}_imcy @{countries[i]}@{it}_imiy;
change_type(var) @{countries[i]}@{it}_numc @{countries[i]}@{it}_numi;
@# endfor
@#endfor

@#include "modeqs_eq_SI.mod"

load_params_and_steady_state('eagle_steady_stage1_eq_SI.txt');

// Calibration of interest (semi-)elasticity of money demand

disp('epsilonm')
homotopy_setup;
EAA_epsilonm, -0.75;
US_epsilonm,  -0.75;
RW_epsilonm,  -0.75;
EAB_epsilonm, -0.75;
end;
steady(homotopy_mode = 1, homotopy_steps = 5, solve_algo = 5, markowitz = 5);


// Calibration of consumption-based velocity (based on MSN data and SGU, respectively)

disp('vi')
homotopy_setup;
EAA_vi, 2.38;
US_vi,  2.38;
RW_vi,  2.38;
EAB_vi, 2.38;
end;
steady(homotopy_mode = 1, homotopy_steps = 5, solve_algo = 5, markowitz = 5);

// Calibration of nominal investment-to-output ratio

disp('iy')
homotopy_setup;
EAA_iy, 0.21;
US_iy,  0.19;
RW_iy,  0.25;
EAB_iy, 0.266998; 
end;
steady(homotopy_mode = 1, homotopy_steps = 10, solve_algo = 5, markowitz = 5);

// Trade matrix

disp('Trade matrix')
homotopy_setup;
EAA_imcy, 0.16;   
EAB_imcy, 0.1571; 
EAA_imiy, 0.09;   
EAB_imiy, 0.0886; 
RW_imcy,  0.036;  
US_imcy,  0.077;  
RW_imiy,  0.045;  
US_imiy,  0.076;  

EABEAA_imcy, 0.1276756; 
EABRW_imcy,  0.027492; 
EABEAA_imiy, 0.0734608; 
EABRW_imiy,  0.0141124; 
EAAEAB_imcy, 0.003625;
EAAUS_imcy,  0.020551; 
EAAEAB_imiy, 0.002066;
EAAUS_imiy,  0.016747; 
RWEAB_imcy,  0.000465; 
RWUS_imcy,   0.016629;  
RWEAB_imiy,  0.000252; 
RWUS_imiy,   0.026441;  
USEAA_imcy,  0.014177; 
USRW_imcy,   0.06225;   
USEAA_imiy,  0.014451; 
USRW_imiy,   0.061202;  
end;
steady(homotopy_mode = 1, homotopy_steps = 230, solve_algo = 6);

// Sizes

disp('size')
homotopy_setup;
EAA_size, 0.198;
US_size,  0.31; 
RW_size,  0.49;
EAB_size, 0.002;
end;
steady(homotopy_mode = 1, homotopy_steps = 350, solve_algo = 6, markowitz = 5);

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
EAB_gammai1 = 1.8;

EAA_gammau2 = 2000;
US_gammau2  = 2000;
RW_gammau2  = 2000;
EAB_gammau2 = 2000; 

EAA_gammaimc1 = 5;
US_gammaimc1  = 5;
RW_gammaimc1  = 5;
EAB_gammaimc1 = 2;

EAA_gammaimi1 = 2;
US_gammaimi1  = 2;
RW_gammaimi1  = 2;
EAB_gammaimi1 = 1;

EAA_gammab1 = 0.01;
RW_gammab1  = 0.01;
EAB_gammab1 = 0.01;

save_params_and_steady_state('eagle_steady_eq_SI.txt');
