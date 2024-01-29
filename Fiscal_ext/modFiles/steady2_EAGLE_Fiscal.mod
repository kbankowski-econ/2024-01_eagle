options_.maxit_ = 350
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;


@#define steady = 1

@#include "init_EAGLE_Fiscal.mod"

@#include "symdecls_EAGLE_Fiscal.mod"

// Flip variables


//CALIBRATION OF QUASI-SHARES AND OTHER

@#for co in countries
change_type(parameters) @{co}_epsilonm @{co}_vi @{co}_iy @{co}_imcy @{co}_imiy;
change_type(var) @{co}_gammav2 @{co}_gammav1 @{co}_psit @{co}_nutc @{co}_nuti;
@#endfor


//CALIBRATION OF EAB_nux
@#for co in countries
@#if co=="EAB"
change_type(parameters) @{co}_imxy;
change_type(var) @{co}_nux;
@#endif
@#endfor

//CALIBRATION OF nutcg and nutig

@#for co in countries
change_type(parameters) @{co}_imcgy @{co}_imigy;
change_type(var) @{co}_nutcg @{co}_nutig;
@#endfor

//CALIBRATION OF EAB_numi, EAB_numc, and EAB_numx

@#for i in 1:4
@# for it in countries - [ countries[i], countries3[i] ]
@#if i==2
change_type(parameters) @{countries[i]}@{it}_imcy @{countries[i]}@{it}_imiy @{countries[i]}@{it}_imxy;
change_type(var) @{countries[i]}@{it}_numc @{countries[i]}@{it}_numi @{countries[i]}@{it}_numx;
@#endif
@# endfor
@#endfor


@#include "modeqs_EAGLE_Fiscal.mod"

load_params_and_steady_state('eagle_steady_stage1_EAGLE_Fiscal.txt');

// Calibration of interest (semi-)elasticity of money demand

disp('epsilonm')
homotopy_setup;
EAA_epsilonm, -0.75;
US_epsilonm,  -0.75;
RW_epsilonm,  -0.75;
EAB_epsilonm, -0.75;
end;
steady(homotopy_steps = 10);


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
//Note: government investment is subtracted from private investment (I in National Accounts includes government investment)
disp('iy')
homotopy_setup;
EAA_iy, 0.21-EAA_igybar;
US_iy,  0.19-US_igybar;
RW_iy,  0.25-RW_igybar;
EAB_iy, 0.1906-EAB_igybar;  
end;
steady(homotopy_steps = 40, solve_algo=6);

// Trade matrix

disp('Trade matrix - government import shares')
homotopy_setup;
EAA_imcgy, 0.0123;
EAA_imigy, 0.004;
US_imcgy,  0.0085;
US_imigy,  0.004;
RW_imcgy,  0.00996;
RW_imigy,  0.004;
EAB_imcgy, 0.02;
EAB_imigy, 0.01;
end;
steady(homotopy_mode = 1, homotopy_steps = 42, solve_algo = 6);

// Note: government imports are part of total imports in National Accounts, hence subtraction
disp('Trade matrix')
homotopy_setup;
EAA_imcy, 0.152 -EAA_imcgy;
EAB_imcy, 0.2403-EAB_imcgy;        
EAA_imiy, 0.090 -EAA_imigy;  
EAB_imiy, 0.1397-EAB_imigy;  
RW_imcy,  0.036 -RW_imcgy;
US_imcy,  0.077 -US_imcgy;
RW_imiy,  0.045 -RW_imigy;
US_imiy,  0.076 -US_imigy;
end;
steady(homotopy_steps = 390, solve_algo = 5);


disp('Trade matrix - nux')
homotopy_setup;
EAB_imxy, 0.3181;
end;
steady(homotopy_mode = 1, homotopy_steps = 330, solve_algo = 6);

// Note: government imports are part of total imports in National Accounts, hence subtraction
disp('Trade matrix - numi, numc, numx')
homotopy_setup;
EABEAA_imcy, 0.189119-2/3*EAB_imcgy;
EABRW_imcy,  0.049575-0.9/3*EAB_imcgy;
EABEAA_imiy, 0.107743-2/3*EAB_imigy;
EABRW_imiy,  0.028243-0.9/3*EAB_imigy;
EABEAA_imxy, 0.2340;
EABRW_imxy,  0.0693;
end;
steady(homotopy_mode = 1, homotopy_steps = 157, solve_algo = 6);


// Sizes

disp('size')
homotopy_setup;
EAA_size, 0.198;
US_size,  0.31;
RW_size,  0.49;
EAB_size, 0.002;   
end;
steady(homotopy_mode =1, homotopy_steps = 480, solve_algo = 6);


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
EAB_gammai1 = 3;

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
EAB_gammaimc1 = 1;

EAA_gammaimi1 = 2.00;
US_gammaimi1  = 2.00;
RW_gammaimi1  = 2.00;
EAB_gammaimi1 = 1.5;   

EAA_gammab1 = 0.01;
RW_gammab1  = 0.01;
EAB_gammab1 = 0.01;     


save_params_and_steady_state('eagle_steady_EAGLE_Fiscal.txt');
