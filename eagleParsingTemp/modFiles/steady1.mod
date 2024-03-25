options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls.mod"

@#define sigma_equals_one = [ 1, 1, 1, 1, 1 , 1 , 1 ] 

@#include "modeqs.mod"

@#include "params.mod"

@#include "initval.mod"

// Technology

disp('alphat')
homotopy_setup;
EAA_alphat, 0.3;
RW_alphat,  0.3;
US_alphat,  0.3;
EAB_alphat, 0.3;
EAC_alphat, 0.3;
end;
steady(homotopy_steps = 5);

disp('alphan')
homotopy_setup;
EAA_alphan, 0.3;
RW_alphan,  0.3;
US_alphan,  0.3;
EAB_alphan, 0.3;
EAC_alphan, 0.3;
end;
steady(homotopy_steps = 5);

// Final-goods demand (elasticities followed by home-bias parameters)

disp('muc')
homotopy_setup;
EAA_muc, 0.5;
RW_muc,  0.5;
US_muc,  0.5;
EAB_muc, 0.5;
EAC_muc, 0.5;
end;
steady(homotopy_steps = 5);

disp('mutc')
homotopy_setup;
EAA_mutc, 2.5;
RW_mutc,  2.5;
US_mutc,  2.5;
EAB_mutc, 2.5;
EAC_mutc, 2.5;
end;
steady(homotopy_steps = 5);

disp('mumc')
homotopy_setup;
EAA_mumc, 2.5;
RW_mumc,  2.5;
US_mumc,  2.5;
EAB_mumc, 2.5;
EAC_mumc, 2.5;
end;
steady(homotopy_steps = 5);

disp('mui')
homotopy_setup;
EAA_mui, 0.5;
RW_mui,  0.5;
US_mui,  0.5;
EAB_mui, 0.5;
EAC_mui, 0.5;
end;
steady(homotopy_steps = 5);

disp('muti')
homotopy_setup;
EAA_muti, 2.5;
RW_muti,  2.5;
US_muti,  2.5;
EAB_muti, 2.5;
EAC_muti, 2.5;
end;
steady(homotopy_steps = 5);

disp('mumi')
homotopy_setup;
EAA_mumi, 2.5;
RW_mumi,  2.5;
US_mumi,  2.5;
EAB_mumi, 2.5;
EAC_mumi, 2.5;
end;
steady(homotopy_steps = 5);

disp('nuc')
homotopy_setup;
EAA_nuc, 0.45;
RW_nuc,  0.35;
US_nuc,  0.35;
EAB_nuc, 0.45;
EAC_nuc, 0.45;
end;
steady(homotopy_steps = 5);

disp('nui')
homotopy_setup;
EAA_nui, 0.75;
RW_nui,  0.75;
US_nui,  0.75;
EAB_nui, 0.75;
EAC_nui, 0.75;
end;
steady(homotopy_steps = 5);

disp('nutc')
homotopy_setup;
EAA_nutc, 0.20;
RW_nutc,  0.20;
US_nutc,  0.85;
EAB_nutc, 0.20;
EAC_nutc, 0.20;
end;
steady(homotopy_steps = 5);

disp('nuti')
homotopy_setup;
EAA_nuti, 0.20;
RW_nuti,  0.20;
US_nuti,  0.85;
EAB_nuti, 0.20;
EAC_nuti, 0.20;
end;
steady(homotopy_steps = 5);

// Price setting (domestic markets followed by foreign markets)

disp('psit')
homotopy_setup;
EAA_psit, 0.2;
RW_psit,  0.2;
US_psit,  0.2;
EAB_psit, 0.2;
EAC_psit, 0.2;
end;
steady(homotopy_steps = 5);

disp('psin')
homotopy_setup;
EAA_psin, 0.28;
RW_psin,  0.08;
US_psin,  0.08;
EAB_psin, 0.28;
EAC_psin, 0.28;
end;
steady(homotopy_steps = 5);

disp('xin')
homotopy_setup;
EAA_xin, 0.92;
RW_xin,  0.75;
US_xin,  0.75;
EAB_xin, 0.92;
EAC_xin, 0.92;
end;
steady(homotopy_steps = 5);

disp('xih')
homotopy_setup;
EAA_xih, 0.92;
RW_xih,  0.75;
US_xih,  0.75;
EAB_xih, 0.92;
EAC_xih, 0.92;
end;
steady(homotopy_steps = 5);

disp('xix')
homotopy_setup;
EAA_xix, 0.75;
RW_xix,  0.75; 
US_xix,  0.75;
EAB_xix, 0.75;
EAC_xix, 0.75;
end;
steady(homotopy_steps = 5);

// DE a bit more flexible
disp('xii/xij')
homotopy_setup;
EAA_xii, 0.75;
EAA_xij, 0.75;
US_xii,  0.75;
US_xij,  0.75;
RW_xii,  0.75;
RW_xij,  0.75;
EAB_xii, 0.75;
EAB_xij, 0.75;
EAC_xii, 0.75;
EAC_xij, 0.75;
end;
steady(homotopy_steps = 5);

disp('chin')
homotopy_setup;
EAA_chin, 0.5;
RW_chin,  0.5;
US_chin,  0.5;
EAB_chin, 0.5;
EAC_chin, 0.5;
end;
steady(homotopy_steps = 5);

disp('chih')
homotopy_setup;
EAA_chih, 0.5;
RW_chih,  0.5;
US_chih,  0.5;
EAB_chih, 0.5;
EAC_chih, 0.5;
end;
steady(homotopy_steps = 5);

disp('chix')
homotopy_setup;
EAA_chix, 0.5;
RW_chix,  0.5;
US_chix,  0.5;
EAB_chix, 0.5;
EAC_chix, 0.5;
end;
steady(homotopy_steps = 5);

disp('chii/chij')
homotopy_setup;
EAA_chii, 0.75;
EAA_chij, 0.75;
US_chii,  0.75;
US_chij,  0.75;
RW_chii,  0.75;
RW_chij,  0.75;
EAB_chii, 0.75;
EAB_chij, 0.75;
EAC_chii, 0.75;
EAC_chij, 0.75;
end;
steady(homotopy_steps = 5);

// Preferences

// Skip because correct value already specified in params.mod
/*
disp('sigma')
homotopy_setup;
EAA_sigma, 1.0;
RW_sigma,  1.0;
US_sigma,  1.0;
EAB_sigma, 1.0;
end;
steady(homotopy_steps = 5);
*/

// DE less persistent
disp('kappa')
homotopy_setup;
EAA_kappa, 0.70;
RW_kappa,  0.70;
US_kappa,  0.70;
EAB_kappa, 0.70;
EAC_kappa, 0.70;
end;
steady(homotopy_steps = 5);

// Skip because correct value already specified in params.mod
/*
disp('zeta')
homotopy_setup;
EAA_zeta, 2.00;
RW_zeta,  2.00;
US_zeta,  2.00;
EAB_zeta, 2.00;
end;
steady(homotopy_steps = 5);
*/

// Transaction cost

disp('gammav1')
homotopy_setup;
EAA_gammav1, 0.0267;
RW_gammav1,  0.0267;
US_gammav1,  0.0267;
EAB_gammav1, 0.0267;
EAC_gammav1, 0.0267;
end;
steady(homotopy_steps = 5);

disp('gammav2')
homotopy_setup;
EAA_gammav2, 0.1284;
RW_gammav2,  0.1284;
US_gammav2,  0.1284;
EAB_gammav2, 0.1284;
EAC_gammav2, 0.1284;
end;
steady(homotopy_steps = 5);

disp('thetan')
homotopy_setup;
EAA_thetan, 3.00;
RW_thetan,  4.60;
US_thetan,  4.60;
EAB_thetan, 3.00;
EAC_thetan, 3.00;
end;
steady(homotopy_steps = 10);

// Elasticities
disp('thetat')
homotopy_setup;
EAA_thetat, 6.00;
RW_thetat,  6.00;
US_thetat,  6.00;
EAB_thetat, 6.00;
EAC_thetat, 6.00;
end;
steady(homotopy_steps = 15);

disp('EAA_eta*')
homotopy_setup;
EAA_eta,  4.33;
EAA_etai, 4.33;
EAA_etaj, 4.33;
end;
steady(homotopy_steps = 10);

disp('EAB_eta*')
homotopy_setup;
EAB_eta,  4.33;
EAB_etai, 4.33;
EAB_etaj, 4.33;
end;
steady(homotopy_steps = 10);

disp('EAC_eta*')
homotopy_setup;
EAC_eta,  4.33;
EAC_etai, 4.33;
EAC_etaj, 4.33;
end;
steady(homotopy_steps = 10);

disp('US_eta*')
homotopy_setup;
US_eta,  7.25;
US_etai, 7.25;
US_etaj, 7.25;
end;
steady(homotopy_steps = 15);

disp('RW_eta*')
homotopy_setup;
RW_eta,  7.25;
RW_etai, 7.25;
RW_etaj, 7.25;
end;
steady(homotopy_steps = 10);

// Fiscal policy

disp('bytarget')
homotopy_setup;
EAA_bytarget, 2.40;
US_bytarget,  2.40;
RW_bytarget,  2.40;
EAB_bytarget, 2.40;
EAC_bytarget, 2.40;
end;
steady(homotopy_steps = 5);

disp('gybar')
homotopy_setup;
EAA_gybar, 0.20;
US_gybar,  0.16;
RW_gybar,  0.16;
EAB_gybar, 0.20;
EAC_gybar, 0.20;
end;
steady(homotopy_steps = 5);

// Monetary policy

disp('pi4target')
homotopy_setup;
EAA_pi4target, 1.02;
US_pi4target,  1.02;
RW_pi4target,  1.02;
EAB_pi4target, 1.02;
EAC_pi4target, 1.02;
end;
steady(homotopy_steps = 5);

// Discounting (that is, the equilibrium real interest rate)

// rrstar = 1.03**0.25
disp('beta')
homotopy_setup;
EAA_beta, 0.99263754;
US_beta,  0.99263754;
RW_beta,  0.99263754;
EAB_beta, 0.99263754;
EAC_beta, 0.99263754;
end;
steady(homotopy_steps = 5);

// Tax wedges

disp('taucbar')
homotopy_setup;
EAA_taucbar, 0.183;
US_taucbar,  0.077;
RW_taucbar,  0.077;
EAB_taucbar, 0.183;
EAC_taucbar, 0.183;
end;
steady(homotopy_steps = 5);

disp('taunbar')
homotopy_setup;
EAA_taunbar, 0.122;
US_taunbar,  0.154;
RW_taunbar,  0.154;
EAB_taunbar, 0.122;
EAC_taunbar, 0.122;
end;
steady(homotopy_steps = 5);

disp('tauwhbar')
homotopy_setup;
EAA_tauwhbar, 0.118;
US_tauwhbar,  0.071;
RW_tauwhbar,  0.071;
EAB_tauwhbar, 0.118;
EAC_tauwhbar, 0.118;
end;
steady(homotopy_steps = 5);

disp('tauwfbar')
homotopy_setup;
EAA_tauwfbar, 0.219;
US_tauwfbar,  0.071;
RW_tauwfbar,  0.071;
EAB_tauwfbar, 0.219;
EAC_tauwfbar, 0.219;
end;
steady(homotopy_steps = 5);

/* Commented out because right value already set in params.mod
// Size of household J
disp('omega')
homotopy_setup;
EAA_omega, 0.25;
US_omega,  0.25;
RW_omega,  0.25;
EAB_omega, 0.25;
EAC_omega, 0.25;
end;
steady(homotopy_steps = 5);
*/

// Distribution of lump-sum transfers and lump-sum taxes
// distribution: 1:3 for omega = 0.25; Benchmark

disp('upsilontr')
homotopy_setup;
EAA_upsilontr, 0.66666666;
US_upsilontr,  0.66666666;
RW_upsilontr,  0.66666666;
EAB_upsilontr, 0.66666666;
EAC_upsilontr, 0.66666666;
end;
steady(homotopy_steps = 5);

disp('upsilont')
homotopy_setup;
EAA_upsilont, 1.20;
US_upsilont,  1.20;
RW_upsilont,  1.20;
EAB_upsilont, 1.20;
EAC_upsilont, 1.20;
end;
steady(homotopy_steps = 5);

disp('bfytarget')
homotopy_setup;
EAA_bfytarget, -0.15;
RW_bfytarget,   0.40;
EAB_bfytarget,  0.40;
EAC_bfytarget,  0.40;
end;
steady(homotopy_steps = 5);


save_params_and_steady_state('eagle_steady_stage1.txt');
