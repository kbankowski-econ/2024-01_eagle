options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls.mod"

@#include "params.mod"

// Flip variables

@#include "initval.mod"

@#include "modeqs.mod"



// Technology

disp('alphat')
homotopy_setup;
@#for co in countries
@{co}_alphat, 0.3;
@#endfor
end;
steady(homotopy_steps = 5);

@#for co in countries
change_type(parameters) @{co}_iy;
change_type(var) @{co}_psit;
@#endfor

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
        @{co}_nuc, 0.65;
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
@{co}_chii, 0.75;
@{co}_chij, 0.75;
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

@#for co in countries
    @#if co=="RW" || co=="US"
        disp('RW and US _eta*')
        homotopy_setup;
        @{co}_eta, 7.25;
        @{co}_etai, 7.25;
        @{co}_etaj, 7.25;
        end;
        steady(homotopy_steps = 10);
    @#else
        disp('EUROPE _eta*')
        homotopy_setup;
        @{co}_eta, 4.33;
        @{co}_etai, 4.33;
        @{co}_etaj, 4.33;
        end;
        steady(homotopy_steps = 10);
    @#endif

@#endfor

// Fiscal policy

disp('bytarget')
homotopy_setup;
@#for co in countries
@{co}_bytarget, 2.40;
@#endfor
end;
steady(homotopy_steps = 5);

disp('cgybar')
homotopy_setup;
@#for co in countries
    @#if co=="RW" || co=="US"
        @{co}_cgybar, 0.16;
    @#else
        @{co}_cgybar, 0.20;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);

disp('igybar')
homotopy_setup;

@#for co in countries
@{co}_igybar, 0.04;
@#endfor

@#for co in countries
    @#if co== coGermany
        @{co}_iy, 0.1906-@{co}_igybar;  
    @#else
        @#if co== coUSA
            @{co}_iy,  0.19-@{co}_igybar; 
        @#else
            @#if co== "RW"
                @{co}_iy,  0.25-@{co}_igybar; 
            @#else
                @{co}_iy,  0.21-@{co}_igybar;
            @#endif
        @#endif
    @#endif         
@#endfor

end;
steady(homotopy_steps = 5);

disp('mutcg') 
homotopy_setup;
@#for co in countries
@{co}_mutcg, 2.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('mutig')
homotopy_setup;
@#for co in countries
@{co}_mutig, 2.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('mumcg')
homotopy_setup;
@#for co in countries
@{co}_mumcg, 2.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('mumig')
homotopy_setup;
@#for co in countries
@{co}_mumig, 2.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('nuig') 
homotopy_setup;
@#for co in countries
    @#if co== countries[ctryNumber-2]
        @{co}_nuig, 0.6;
    @#else
        @{co}_nuig, 0.8;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);

disp('nucg') 
homotopy_setup;
@#for co in countries
@{co}_nucg, 0.8;
@#endfor
end;
steady(homotopy_steps = 5);

disp('mucg')
homotopy_setup;
@#for co in countries
@{co}_mucg, 0.5;
@#endfor
end;
steady(homotopy_steps = 5);

disp('muig') 
homotopy_setup;
@#for co in countries
@{co}_muig, 0.5;
@#endfor
end;
steady(homotopy_steps = 5);

// Monetary policy

disp('pi4target')
homotopy_setup;
@#for co in countries
@{co}_pi4target, 1.02;
@#endfor
end;
steady(homotopy_steps = 5);

// Discounting (that is, the equilibrium real interest rate)

// rrstar = 1.03**0.25
disp('beta')
homotopy_setup;
@#for co in countries
@{co}_beta, 0.99263754;
@#endfor
end;
steady(homotopy_steps = 5);

// Tax wedges

disp('taucbar')
homotopy_setup;
@#for co in countries
    @#if co=="RW" || co=="US"
        @{co}_taucbar, 0.077;
    @#else
        @{co}_taucbar, 0.183;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);

disp('taunbar')
homotopy_setup;
@#for co in countries
    @#if co=="RW" || co=="US"
        @{co}_taunbar, 0.154;
    @#else
        @{co}_taunbar, 0.122;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);

disp('tauwhbar')
homotopy_setup;
@#for co in countries
    @#if co=="RW" || co=="US"
        @{co}_tauwhbar, 0.071;
    @#else
        @{co}_tauwhbar, 0.118;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);

disp('tauwfbar')
homotopy_setup;
@#for co in countries
    @#if co=="RW" || co=="US"
        @{co}_tauwfbar, 0.071;
    @#else
        @{co}_tauwfbar, 0.219;
    @#endif
@#endfor
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
@#for co in countries
@{co}_upsilontr, 0.66666666;
@#endfor
end;
steady(homotopy_steps = 5);

disp('upsilont')
homotopy_setup;
@#for co in countries
@{co}_upsilont, 1.20;
@#endfor
end;
steady(homotopy_steps = 5);

disp('bfytarget')
homotopy_setup;
@#for co in countries - [ countries[ctryNumber]]
    @#if co=="RW" || co=="US" || co== countries[ctryNumber-2]
        @{co}_bfytarget, 0.4;
    @#else
        @{co}_bfytarget, -0.15;
    @#endif
@#endfor
end;
steady(homotopy_steps = 5);


save_params_and_steady_state('eagle_steady_stage1.txt');
