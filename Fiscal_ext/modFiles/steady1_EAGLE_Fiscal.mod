options_.maxit_ = 240
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;


@#define steady = 1

@#include "init_EAGLE_Fiscal.mod"

@#include "symdecls_EAGLE_Fiscal.mod"

@#define sigma_equals_one = [ 1,1,1,1 ]  

@#include "modeqs_EAGLE_Fiscal.mod"

@#include "params_EAGLE_Fiscal.mod"

@#include "initval_EAGLE_Fiscal.mod"


//IG to Y ratio; first to get it above 0 (is fine-tuned below)
disp('igybar')
homotopy_setup;
EAA_cgybar, 0.00005;
US_cgybar,  0.00005;
RW_cgybar,  0.00005;
EAB_cgybar, 0.00005;     
end;
steady(homotopy_steps = 160, solve_algo=5);

//IG to Y ratio; first to get it above 0 (is fine-tuned below)
disp('igybar')
homotopy_setup;
EAA_igybar, 0.0005;
US_igybar,  0.0005;
RW_igybar,  0.0005;
EAB_igybar, 0.0005;     
end;
steady(homotopy_steps = 180, solve_algo=5);

// Depreciation rate of public capital
disp('deltag')
homotopy_setup;
EAA_deltag, 0.025;
US_deltag,  0.025;
RW_deltag,  0.025;
EAB_deltag, 0.025;   
end;
steady(homotopy_steps = 5, solve_algo=6);

// Productivity of public capital
disp('alphag')
homotopy_setup;
EAA_alphag, 0.05;
US_alphag,  0.05;
RW_alphag,  0.05;
EAB_alphag, 0.05;     
end;
steady(homotopy_steps = 50, solve_algo=5);

// Technology

//cap share T
disp('alphat')
homotopy_setup;
EAA_alphat, 0.30;
RW_alphat,  0.30;
US_alphat,  0.30;
EAB_alphat, 0.42;
end;
steady(homotopy_steps = 10);

//cap share NT
disp('alphan')
homotopy_setup;
EAA_alphan, 0.30;
RW_alphan,  0.30;
US_alphan,  0.30;
EAB_alphan, 0.30;
end;
steady(homotopy_steps = 40, solve_algo=6);

// Final-goods demand (elasticities followed by home-bias parameters)

//elast of sub dom vs. foreign good (X)
disp('mux')
homotopy_setup;
EAA_mux, 1.5;
RW_mux,  1.5;
US_mux,  1.5;
EAB_mux, 1.5;
end;
steady(homotopy_steps = 55,homotopy_mode=1);

//elast of sub in IMP of EXP good (IMX)
disp('mumx')
homotopy_setup;
EAA_mumx, 2.5;
RW_mumx,  2.5;
US_mumx,  2.5;
EAB_mumx, 2.5; 
end;
steady(homotopy_steps = 20);

//elast of sub dom cons good (QC)
disp('muc')
homotopy_setup;
EAA_muc, 0.5;
RW_muc,  0.5;
US_muc,  0.5;
EAB_muc, 0.5;
end;
steady(homotopy_steps = 5);

//elast of sub dom T cons good (TTC)
disp('mutc')
homotopy_setup;
EAA_mutc, 2.5;
RW_mutc,  2.5;
US_mutc,  2.5;
EAB_mutc, 2.5;  
end;
steady(homotopy_steps = 5);

//elast of sub in IMP cons good (IMC)
disp('mumc')
homotopy_setup;
EAA_mumc, 2.5;
RW_mumc,  2.5;
US_mumc,  2.5;
EAB_mumc, 2.5;  
end;
steady(homotopy_steps = 10);

//elast of sub dom inv good (QI)
disp('mui')
homotopy_setup;
EAA_mui, 0.5;
RW_mui,  0.5;
US_mui,  0.5;
EAB_mui, 0.5;
end;
steady(homotopy_steps = 5);

//elast of sub dom T inv good (TTI)
disp('muti')
homotopy_setup;
EAA_muti, 2.5;
RW_muti,  2.5;
US_muti,  2.5;
EAB_muti, 1.5;  
end;
steady(homotopy_steps = 5);

//elast of sub dom IMP inv good (IMI)
disp('mumi')
homotopy_setup;
EAA_mumi, 2.5;
RW_mumi,  2.5;
US_mumi,  2.5;
EAB_mumi, 2.5; 
end;
steady(homotopy_steps = 10);

//1-import content of exports
disp('nux')
homotopy_setup;
EAA_nux, .80;
RW_nux,  .65;
US_nux,  .85;
%EAB_nux, 0.25; //Calibrated in steady2
end;
steady(homotopy_steps = 5);

//share of T in final cons good
disp('nuc')
homotopy_setup;
EAA_nuc, 0.35;  
RW_nuc,  0.35;
US_nuc,  0.35;
EAB_nuc, 0.7;   
end;
steady(homotopy_steps = 5);

//share of T in final inv good
disp('nui')
homotopy_setup;
EAA_nui, 0.75;
RW_nui,  0.75;
US_nui,  0.75;
EAB_nui, 0.89;    
end;
steady(homotopy_steps = 5);

//share of consumption good imports from co2 in total imports of co1
disp('numc')
homotopy_setup;
EAAEAB_numc, 0.03;
EAAUS_numc,  0.078;
RWEAB_numc,  0.020;       
RWUS_numc,   0.394;
USEAA_numc,  0.145;    
USRW_numc,   0.847;
end;
steady(homotopy_steps = 20);

//share of investment good imports from co2 in total imports of co1
disp('numi')
homotopy_setup;
EAAEAB_numi, 0.01;
EAAUS_numi,  0.116;
RWEAB_numi,  0.009;        
RWUS_numi,   0.520;
USEAA_numi,  0.150;      
USRW_numi,   0.845;  
end;
steady(homotopy_steps = 20);

//share of intermediate good imports from co2 in total imports of co1
disp('numx')
homotopy_setup;
EAAEAB_numx, 0.010; 
EAAUS_numx,  0.060;
RWEAB_numx,  0.020;        
RWUS_numx,   0.531;
USEAA_numx,  0.112;    
USRW_numx,   0.875;
end;
steady(homotopy_steps = 20);

// Price setting (domestic markets followed by foreign markets)

//fixed cost in NT production
disp('psin')
homotopy_setup;
EAA_psin, 0.10;
RW_psin,  0.15;
US_psin,  0.10;
EAB_psin, 0.01;
end;
steady(homotopy_steps = 5);

//Calvo NT
disp('xin')
homotopy_setup;
EAA_xin, 0.75;  
RW_xin,  0.75;
US_xin,  0.75;
EAB_xin, 0.932;
end;
steady(homotopy_steps = 5);

//Calvo T
disp('xih')
homotopy_setup;
EAA_xih, 0.75;  
RW_xih,  0.75;
US_xih,  0.75;
EAB_xih, 0.75;
end;
steady(homotopy_steps = 5);

//Calvo EXP
disp('xix')
homotopy_setup;
EAA_xix, 0.75;
RW_xix,  0.75; 
US_xix,  0.75;
EAB_xix, 0.75;
end;
steady(homotopy_steps = 5);

// Calvo wages of I and J
disp('xii/xij')
homotopy_setup;
EAA_xii, 0.75;
EAA_xij, 0.75;
US_xii,  0.75;
US_xij,  0.75;
RW_xii,  0.75;
RW_xij,  0.75;
EAB_xii, 0.81;
EAB_xij, 0.81;
end;
steady(homotopy_steps = 5);

//indexation NT
disp('chin')
homotopy_setup;
EAA_chin, 0.5;
RW_chin,  0.5;
US_chin,  0.5;
EAB_chin, 0.5;
end;
steady(homotopy_steps = 5);

//indexation T
disp('chih')
homotopy_setup;
EAA_chih, 0.5;
RW_chih,  0.5;
US_chih,  0.5;
EAB_chih, 0.5;
end;
steady(homotopy_steps = 5);

//indexation EXP
disp('chix')
homotopy_setup;
EAA_chix, 0.5;
RW_chix,  0.5;
US_chix,  0.5;
EAB_chix, 0.5;
end;
steady(homotopy_steps = 5);

//indexation wages of I and J
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
end;
steady(homotopy_steps = 5);

// Preferences


disp('sigma')
homotopy_setup;
EAA_sigma, 1;
RW_sigma,  1;
US_sigma,  1;
EAB_sigma, 1;
end;
steady(homotopy_steps = 5);


//habit
disp('kappa')
homotopy_setup;
EAA_kappa, 0.6;
RW_kappa,  0.6;
US_kappa,  0.6;
EAB_kappa, 0.6;   
end;
steady(homotopy_steps = 5);

// Can skip because correct value already specified in params.mod
disp('zeta')
homotopy_setup;
EAA_zeta, 2.00;
RW_zeta,  2.00;
US_zeta,  2.00;
EAB_zeta, 2.00;
end;
steady(homotopy_steps = 5);


//elast subst in IM aggregator
disp('thetax')
homotopy_setup;
EAA_thetax, 4.3;
RW_thetax,  6.00;
US_thetax,  6.00;
EAB_thetax, 4.3;
end;
steady(homotopy_steps = 50);

//elast subst in NT aggregator
disp('thetan')
homotopy_setup;
EAA_thetan, 3.00;
RW_thetan,  4.30;
US_thetan,  4.30;
EAB_thetan, 3.00;
end;
steady(homotopy_steps = 30);

// Elast subst in T aggregator
disp('thetat')
homotopy_setup;
EAA_thetat, 4.3;
RW_thetat,  6.00;
US_thetat,  6.00;
EAB_thetat, 4.3;
end;
steady(homotopy_steps = 80, solve_algo = 6);

//elast subst in labour aggregator and I and J labour bundels
disp('EAA_eta*')
homotopy_setup;
EAA_eta,  4.33;
EAA_etai, 4.33;
EAA_etaj, 4.33;
end;
steady(homotopy_steps = 30);

disp('EAB_eta*')
homotopy_setup;
EAB_eta,  4.33;
EAB_etai, 4.33;
EAB_etaj, 4.33;
end;
steady(homotopy_steps = 30);

disp('US_eta*')
homotopy_setup;
US_eta,  7.25;
US_etai, 7.25;
US_etaj, 7.25;
end;
steady(homotopy_steps = 30);

disp('RW_eta*')
homotopy_setup;
RW_eta,  7.25;
RW_etai, 7.25;
RW_etaj, 7.25;
end;
steady(homotopy_steps = 30);

// Fiscal policy

//Public debt to GDP ratio - careful, it is quarterly model!!! 
disp('bytarget')
homotopy_setup;
EAA_bytarget, 2.40;
US_bytarget,  2.40;
RW_bytarget,  2.40;
EAB_bytarget, 2.40;
end;
steady(homotopy_steps = 10);


//CG to Y ratio
disp('cgybar')
homotopy_setup;
EAA_cgybar, 0.205;
US_cgybar,  0.147;
RW_cgybar,  0.166;
EAB_cgybar, 0.2080;     
end;
steady(homotopy_steps = 65,solve_algo=6);


// Quasi-share of government consumption good in composite good
disp('nucces')
homotopy_setup;
EAA_nucces, 0.75;
US_nucces,  0.80;
RW_nucces,  0.80;
EAB_nucces, 0.75;     
end;
steady(homotopy_steps = 40);

// Elast of sub. government and private consumption
disp('mucces')
homotopy_setup;
EAA_mucces, 0.29;
RW_mucces,  0.33;
US_mucces,  0.33;
EAB_mucces, 0.20;
end;
steady(homotopy_steps = 20,solve_algo=6);

// Elast of sub. between home tradable and imported government consumption good
disp('mutcg') 
homotopy_setup;
EAA_mutcg, 2.5;
US_mutcg,  2.5;
RW_mutcg,  2.5;
EAB_mutcg, 2.5;
end;
steady(homotopy_steps = 20);

// Elast of sub. between home tradable and imported government investment good
disp('mutig')
homotopy_setup;
EAA_mutig, 2.5;
US_mutig,  2.5;
RW_mutig,  2.5;
EAB_mutig, 2.5;
end;
steady(homotopy_steps = 20);

// Elast of sub. between imported government consumption goods
disp('mutcg')
homotopy_setup;
EAA_mumcg, 2.5;
US_mumcg,  2.5;
RW_mumcg,  2.5;
EAB_mumcg, 2.5;
end;
steady(homotopy_steps = 5);

// Elast of sub. between imported government investment goods
disp('mutig')
homotopy_setup;
EAA_mumig, 2.5;
US_mumig,  2.5;
RW_mumig,  2.5;
EAB_mumig, 2.5;
end;
steady(homotopy_steps = 5);

// Quasi-share of nontradable government investment good
disp('nuig') 
homotopy_setup;
EAA_nuig, 0.8;
US_nuig,  0.8;
RW_nuig,  0.8;
EAB_nuig, 0.6;
end;
steady(homotopy_steps = 5);

// Quasi-share of nontradable government consumption good (already set in params.mod)
disp('nucg') 
homotopy_setup;
EAA_nucg, 0.8;
US_nucg,  0.8;
RW_nucg,  0.8;
EAB_nucg, 0.8;
end;
steady(homotopy_steps = 5);

// Elast of sub. between tradable and nontradable government consumption good
disp('mucg')
homotopy_setup;
EAA_mucg, 0.5;
US_mucg,  0.5;
RW_mucg,  0.5;
EAB_mucg, 0.5;
end;
steady(homotopy_steps = 77, solve_algo=6);

// Elast of sub. between tradable and nontradable government investment good
disp('muig') 
homotopy_setup;
EAA_muig, 0.5;
US_muig,  0.5;
RW_muig,  0.5;
EAB_muig, 0.5;
end;
steady(homotopy_steps = 90);


//IG to Y ratio - fine tuning
disp('igybar')
homotopy_setup;
EAA_igybar, 0.04;
US_igybar,  0.04;
RW_igybar,  0.04;
EAB_igybar, 0.04;     
end;
steady(homotopy_steps = 250, solve_algo=5);






// Monetary policy

//inf target
disp('pi4target')
homotopy_setup;
EAA_pi4target, 1.02;
US_pi4target,  1.02;
RW_pi4target,  1.02;
EAB_pi4target, 1.02;
end;
steady(homotopy_steps = 15);

// Discounting (that is, the equilibrium real interest rate)

// rrstar = 1.03**0.25
//disc rate
disp('beta')
homotopy_setup;
EAA_beta, 0.99263754;
US_beta,  0.99263754;
RW_beta,  0.99263754;
EAB_beta, 0.99263754;
end;
steady(homotopy_steps = 5);

// Tax wedges
//cons tax
disp('taucbar')
homotopy_setup;
EAA_taucbar, 0.183;
US_taucbar,  0.077;
RW_taucbar,  0.077;
EAB_taucbar, 0.1535;     
end;
steady(homotopy_steps = 10);

//labour tax
disp('taunbar')
homotopy_setup;
EAA_taunbar, 0.122;
US_taunbar,  0.154;
RW_taunbar,  0.154;
EAB_taunbar, 0.12886;   
end;
steady(homotopy_steps = 10);

//employees contribution
disp('tauwhbar')
homotopy_setup;
EAA_tauwhbar, 0.118;
US_tauwhbar,  0.071;
RW_tauwhbar,  0.071;
EAB_tauwhbar, 0.15185;  
end;
steady(homotopy_steps = 10);

//employers contribution
disp('tauwfbar')
homotopy_setup;
EAA_tauwfbar, 0.219;
US_tauwfbar,  0.071;
RW_tauwfbar,  0.071;
EAB_tauwfbar, 0.1388;  
end;
steady(homotopy_steps = 10);

disp('taukbar')
homotopy_setup;
EAA_taukbar, 0.19;
RW_taukbar,  0.16;
US_taukbar,  0.16;
EAB_taukbar, 0.1363;
end;
steady(homotopy_mode = 1, homotopy_steps = 10, solve_algo = 5, markowitz = 5);


/*
// Size of household J
disp('omega')
homotopy_setup;
EAA_omega, 0.25;
US_omega,  0.25;
RW_omega,  0.25;
EAB_omega, 0.25;
end;
steady(homotopy_steps = 10);
*/

// Distribution of lump-sum transfers and lump-sum taxes
// distribution: 1:3 for omega = 0.25; Benchmark

disp('upsilontr')
homotopy_setup;
EAA_upsilontr, 0.66666666;
US_upsilontr,  0.66666666;
RW_upsilontr,  0.66666666;
EAB_upsilontr, 0.66666666;
end;
steady(homotopy_steps = 5);

disp('upsilont')
homotopy_setup;
EAA_upsilont, 1.20;
US_upsilont,  1.20;
RW_upsilont,  1.20;
EAB_upsilont, 1.20;
end;
steady(homotopy_steps = 5);

//NFA to Y ratio
disp('bfytarget')
homotopy_setup;
EAA_bfytarget,  -0.015;     
RW_bfytarget,    0.20;
EAB_bfytarget,  -2.61;            
EAA_bhytarget,   0;
end;
steady(homotopy_steps = 10);

save_params_and_steady_state('eagle_steady_stage1_EAGLE_Fiscal.txt');
