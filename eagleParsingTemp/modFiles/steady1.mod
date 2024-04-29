options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls.mod"

@#include "modeqs.mod"

@#include "params.mod"

@#include "initval.mod"

// Technology

disp('alphat')
homotopy_setup;
@#for co in countries
@{co}_alphat, 0.3;
@#endfor
end;
steady(homotopy_steps = 5);

disp('alphan')
homotopy_setup;
@#for co in countries
@{co}_alphan, 0.3;
@#endfor
end;
steady(homotopy_steps = 5);

// Final-goods demand (elasticities followed by home-bias parameters)

disp('muc')
homotopy_setup;
@#for co in countries
@{co}_muc, 0.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('mutc')
homotopy_setup;
@#for co in countries
@{co}_mutc, 2.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('mumc')
homotopy_setup;
@#for co in countries
@{co}_mumc, 2.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('mui')
homotopy_setup;
@#for co in countries
@{co}_mui, 0.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('muti')
homotopy_setup;
@#for co in countries
@{co}_muti, 2.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('mumi')
homotopy_setup;
@#for co in countries
@{co}_mumi, 2.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('nuc')
homotopy_setup;
@#for co in countries
    @#if co=="RW" || co=="US"
        @{co}_nuc, 0.35;
    @#else
        @{co}_nuc, 0.45;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);

disp('nui')
homotopy_setup;
@#for co in countries
@{co}_nui, 0.75;
@#endfor
end;
steady(homotopy_steps = 5);

disp('nutc')
homotopy_setup;
@#for co in countries
    @#if co=="US"
        @{co}_nutc, 0.85;
    @#else
        @{co}_nutc, 0.20;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);

disp('nuti')
homotopy_setup;
@#for co in countries
    @#if co=="US"
        @{co}_nuti, 0.85;
    @#else
        @{co}_nuti, 0.20;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);

// Price setting (domestic markets followed by foreign markets)

disp('psit')
homotopy_setup;
@#for co in countries
@{co}_psit, 0.2;
@#endfor
end;
steady(homotopy_steps = 5);

disp('psin')
homotopy_setup;
@#for co in countries
    @#if co=="RW" || co=="US"
        @{co}_psin, 0.08;
    @#else
        @{co}_psin, 0.28;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);

disp('xin')
homotopy_setup;
@#for co in countries
    @#if co=="RW" || co=="US"
        @{co}_xin, 0.75;
    @#else
        @{co}_xin, 0.92;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);

disp('xih')
homotopy_setup;
@#for co in countries
    @#if co=="RW" || co=="US"
        @{co}_xih, 0.75;
    @#else
        @{co}_xih, 0.92;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);

disp('xix')
homotopy_setup;
@#for co in countries
@{co}_xix, 0.75;
@#endfor
end;
steady(homotopy_steps = 5);

// DE a bit more flexible
disp('xii/xij')
homotopy_setup;
@#for co in countries
@{co}_xii, 0.75;
@{co}_xij, 0.75;
@#endfor
end;
steady(homotopy_steps = 5);

disp('chin')
homotopy_setup;
@#for co in countries
@{co}_chin, 0.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('chih')
homotopy_setup;
@#for co in countries
@{co}_chih, 0.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('chix')
homotopy_setup;
@#for co in countries
@{co}_chix, 0.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('chii/chij')
homotopy_setup;
@#for co in countries
@{co}_chii, 0.5;
@{co}_chij, 0.5;
@#endfor
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
EAC_sigma,  1.0;
EAD_sigma, 1.0;
EAE_sigma, 1.0;
end;
steady(homotopy_steps = 5);
*/

// DE less persistent
disp('kappa')
homotopy_setup;
@#for co in countries
@{co}_kappa, 0.70;
@#endfor
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
@#for co in countries
@{co}_gammav1, 0.0267;
@#endfor
end;
steady(homotopy_steps = 5);

disp('gammav2')
homotopy_setup;
@#for co in countries
@{co}_gammav2, 0.1284;
@#endfor
end;
steady(homotopy_steps = 5);

disp('thetan')
homotopy_setup;
@#for co in countries
    @#if co=="RW" || co=="US"
        @{co}_thetan, 4.60;
    @#else
        @{co}_thetan, 3.00;
    @#endif
@#endfor
end;
steady(homotopy_steps = 10);

// Elasticities
disp('thetat')
homotopy_setup;
@#for co in countries
@{co}_thetat, 6.00;
@#endfor
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

disp('EAD_eta*')
homotopy_setup;
EAD_eta,  4.33;
EAD_etai, 4.33;
EAD_etaj, 4.33;
end;
steady(homotopy_steps = 10);

disp('EAE_eta*')
homotopy_setup;
EAE_eta,  4.33;
EAE_etai, 4.33;
EAE_etaj, 4.33;
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
EAD_bytarget, 2.40;
EAE_bytarget, 2.40;
end;
steady(homotopy_steps = 5);

disp('cgybar')
homotopy_setup;
EAA_cgybar, 0.20;
US_cgybar,  0.16;
RW_cgybar,  0.16;
EAB_cgybar, 0.20;
EAC_cgybar, 0.20;
EAD_cgybar, 0.20;
EAE_cgybar, 0.20;
end;
steady(homotopy_steps = 5);

disp('igybar')
homotopy_setup;
EAA_igybar, 0.04;
US_igybar,  0.04;
RW_igybar,  0.04;
EAB_igybar, 0.04;
EAC_igybar, 0.04;
EAD_igybar, 0.04;
EAE_igybar, 0.04;
end;
steady(homotopy_steps = 5);

disp('mutcg') 
homotopy_setup;
EAA_mutcg, 2.5;
US_mutcg,  2.5;
RW_mutcg,  2.5;
EAB_mutcg, 2.5;
EAC_mutcg, 2.5;
EAD_mutcg, 2.5;
EAE_mutcg, 2.5;
end;
steady(homotopy_steps = 5);

disp('mutig')
homotopy_setup;
EAA_mutig, 2.5;
US_mutig,  2.5;
RW_mutig,  2.5;
EAB_mutig, 2.5;
EAC_mutig, 2.5;
EAD_mutig, 2.5;
EAE_mutig, 2.5;
end;
steady(homotopy_steps = 5);

disp('mumcg')
homotopy_setup;
EAA_mumcg, 2.5;
US_mumcg,  2.5;
RW_mumcg,  2.5;
EAB_mumcg, 2.5;
EAC_mumcg, 2.5;
EAD_mumcg, 2.5;
EAE_mumcg, 2.5;
end;
steady(homotopy_steps = 5);

disp('mumig')
homotopy_setup;
EAA_mumig, 2.5;
US_mumig,  2.5;
RW_mumig,  2.5;
EAB_mumig, 2.5;
EAC_mumig, 2.5;
EAD_mumig, 2.5;
EAE_mumig, 2.5;
end;
steady(homotopy_steps = 5);

disp('nuig') 
homotopy_setup;
EAA_nuig, 0.8;
US_nuig,  0.8;
RW_nuig,  0.8;
EAB_nuig, 0.6;
EAC_nuig, 0.6;
EAD_nuig, 0.6;
EAE_nuig, 0.6;
end;
steady(homotopy_steps = 5);

disp('nucg') 
homotopy_setup;
EAA_nucg, 0.8;
US_nucg,  0.8;
RW_nucg,  0.8;
EAB_nucg, 0.8;
EAC_nucg, 0.8;
EAD_nucg, 0.8;
EAE_nucg, 0.8;
end;
steady(homotopy_steps = 5);

disp('mucg')
homotopy_setup;
EAA_mucg, 0.5;
US_mucg,  0.5;
RW_mucg,  0.5;
EAB_mucg, 0.5;
EAC_mucg, 0.5;
EAD_mucg, 0.5;
EAE_mucg, 0.5;
end;
steady(homotopy_steps = 5);

disp('muig') 
homotopy_setup;
EAA_muig, 0.5;
US_muig,  0.5;
RW_muig,  0.5;
EAB_muig, 0.5;
EAC_muig, 0.5;
EAD_muig, 0.5;
EAE_muig, 0.5;
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
EAD_pi4target, 1.02;
EAE_pi4target, 1.02;
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
EAD_beta, 0.99263754;
EAE_beta, 0.99263754;
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
EAD_taucbar, 0.183;
EAE_taucbar, 0.183;
end;
steady(homotopy_steps = 5);

disp('taunbar')
homotopy_setup;
EAA_taunbar, 0.122;
US_taunbar,  0.154;
RW_taunbar,  0.154;
EAB_taunbar, 0.122;
EAC_taunbar, 0.122;
EAD_taunbar, 0.122;
EAE_taunbar, 0.122;
end;
steady(homotopy_steps = 5);

disp('tauwhbar')
homotopy_setup;
EAA_tauwhbar, 0.118;
US_tauwhbar,  0.071;
RW_tauwhbar,  0.071;
EAB_tauwhbar, 0.118;
EAC_tauwhbar, 0.118;
EAD_tauwhbar, 0.118;
EAE_tauwhbar, 0.118;
end;
steady(homotopy_steps = 5);

disp('tauwfbar')
homotopy_setup;
EAA_tauwfbar, 0.219;
US_tauwfbar,  0.071;
RW_tauwfbar,  0.071;
EAB_tauwfbar, 0.219;
EAC_tauwfbar, 0.219;
EAD_tauwfbar, 0.219;
EAE_tauwfbar, 0.219;
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
EAD_omega, 0.25;
EAE_omega, 0.25;
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
EAD_upsilontr, 0.66666666;
EAE_upsilontr, 0.66666666;
end;
steady(homotopy_steps = 5);

disp('upsilont')
homotopy_setup;
EAA_upsilont, 1.20;
US_upsilont,  1.20;
RW_upsilont,  1.20;
EAB_upsilont, 1.20;
EAC_upsilont, 1.20;
EAD_upsilont, 1.20;
EAE_upsilont, 1.20;
end;
steady(homotopy_steps = 5);

disp('bfytarget')
homotopy_setup;
EAA_bfytarget, -0.15;
RW_bfytarget,   0.40;
EAB_bfytarget,  0.40;
EAC_bfytarget,  0.40;
EAD_bfytarget,  0.40;
EAE_bfytarget,  0.40;
end;
steady(homotopy_steps = 5);


save_params_and_steady_state('eagle_steady_stage1.txt');
