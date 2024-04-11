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
change_type(var) @{co}_gammav2 @{co}_gammav1 @{co}_taukbar @{co}_nutc @{co}_nuti @{co}_nutcg @{co}_nutig;
@#endfor

@#for i in 1:7
@#for it in countries - [ countries[i], countries6[i]]
change_type(parameters) @{countries[i]}@{it}_imcy @{countries[i]}@{it}_imiy;
change_type(var) @{countries[i]}@{it}_numc @{countries[i]}@{it}_numi;
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
EAA_iy, 0.20 - EAA_igybar;
US_iy,  0.20 - US_igybar;
RW_iy,  0.20 - RW_igybar;
EAB_iy, 0.20 - EAB_igybar;
EAC_iy, 0.20 - EAC_igybar;
EAD_iy, 0.20 - EAD_igybar;
EAE_iy, 0.20 - EAE_igybar;
end;
steady(homotopy_steps = 5, maxit=20);

// Trade matrix

disp('Trade matrix')
homotopy_setup;
EAA_imcy, 0.9*0.2010;
EAAEAB_imcy, 0.9*0.008375;
EAAEAC_imcy, 0.9*0.008375;
EAAEAD_imcy, 0.9*0.008375;
EAAEAE_imcy, 0.9*0.0266875;
EAAUS_imcy, 0.9*0.0041125;

EAB_imcy, 0.9*0.2010;
EABEAA_imcy, 0.9*0.008375;
EABEAC_imcy, 0.9*0.008375;
EABEAD_imcy, 0.9*0.008375;
EABEAE_imcy, 0.9*0.0266875;
EABRW_imcy, 0.9*0.145075;

EAC_imcy, 0.9*0.2010;
EACEAB_imcy, 0.9*0.008375;
EACEAD_imcy, 0.9*0.008375;
EACEAE_imcy, 0.9*0.0266875;
EACRW_imcy, 0.9*0.145075;
EACUS_imcy, 0.9*0.0041125;

EAD_imcy, 0.9*0.2010;
EADEAA_imcy, 0.9*0.008375;
EADEAC_imcy, 0.9*0.008375;
EADEAE_imcy, 0.9*0.0266875;
EADRW_imcy, 0.9*0.145075;
EADUS_imcy, 0.9*0.0041125;

// done
EAE_imcy, 0.9*0.1839;
EAEEAA_imcy, 0.9*0.0872/4;
EAEEAB_imcy, 0.9*0.0872/4;
EAEEAD_imcy, 0.9*0.0872/4;
EAERW_imcy, 0.9*0.0852;
EAEUS_imcy, 0.9*0.0115;

// done
RW_imcy, 0.9* 0.0860;
RWEAA_imcy, 0.9*0.0354/4;
RWEAB_imcy, 0.9*0.0354/4;
RWEAC_imcy, 0.9*0.0354/4;
RWEAE_imcy, 0.9*0.0106;
RWUS_imcy, 0.9*0.0400;

// done
US_imcy, 0.9* 0.0726;
USEAA_imcy, 0.9*0.0078/4;
USEAB_imcy, 0.9*0.0078/4;
USEAC_imcy, 0.9*0.0078/4;
USEAD_imcy, 0.9*0.0078/4;
USRW_imcy, 0.9*0.0617;

EAA_imiy, 0.9*0.0366;
EAAEAB_imiy, 0.9*0.001525;
EAAEAC_imiy, 0.9*0.001525;
EAAEAD_imiy, 0.9*0.001525;
EAAEAE_imiy, 0.9*0.0193375;
EAAUS_imiy, 0.9*0.0056875;

EAB_imiy, 0.9*0.0366;
EABEAA_imiy, 0.9*0.001525;
EABEAC_imiy, 0.9*0.001525;
EABEAD_imiy, 0.9*0.001525;
EABEAE_imiy, 0.9*0.0193375;
EABRW_imiy, 0.9*0.007;

EAC_imiy, 0.9*0.0366;
EACEAB_imiy, 0.9*0.001525;
EACEAD_imiy, 0.9*0.001525;
EACEAE_imiy, 0.9*0.0193375;
EACRW_imiy, 0.9*0.007;
EACUS_imiy, 0.9*0.0056875;

EAD_imiy, 0.9*0.0366;
EADEAC_imiy, 0.9*0.001525;
EADEAA_imiy, 0.9*0.001525;
EADEAE_imiy, 0.9*0.0193375;
EADRW_imiy, 0.9*0.007;
EADUS_imiy, 0.9*0.0056875;

// done
EAE_imiy, 0.9*0.0920;
EAEEAB_imiy, 0.9*0.0436/4;
EAEEAD_imiy, 0.9*0.0436/4;
EAEEAA_imiy, 0.9*0.0436/4;
EAERW_imiy, 0.9*0.0426;
EAEUS_imiy, 0.9*0.0058;

// done
RW_imiy, 0.9* 0.0630;
RWEAA_imiy, 0.9*0.0219/4;
RWEAC_imiy, 0.9*0.0219/4;
RWEAB_imiy, 0.9*0.0219/4;
RWEAE_imiy, 0.9*0.0073;
RWUS_imiy, 0.9*0.0338;

// done
US_imiy, 0.9* 0.0420;
USEAA_imiy, 0.9*0.0037/4;
USEAB_imiy, 0.9*0.0037/4;
USEAC_imiy, 0.9*0.0037/4;
USEAD_imiy, 0.9*0.0037/4;
USRW_imiy, 0.9*0.0364;

// Sizes
EAA_size, 0.16/4;
US_size,  0.31;
RW_size,  0.47;
EAB_size, 0.16/4;
EAC_size, 0.16/4;
EAD_size, 0.16/4;
EAE_size, 0.06;

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
