options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls.mod"

@#include "modeqs.mod"

load_params_and_steady_state('eagle_steady_stage0.txt');

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

// Fixed-cost parameters
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

save_params_and_steady_state('eagle_steady_stage1a.txt');