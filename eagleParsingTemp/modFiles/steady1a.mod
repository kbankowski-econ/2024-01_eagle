// =============================================================================
// STEADY STATE HOMOTOPY METHOD - STAGE 1A
// =============================================================================
//
// 1. Technology Parameters:
//    - alphat: Tradable sector technology parameter (0.1 → 0.3)
//    - alphan: Non-tradable sector technology parameter (0.1 → 0.3)
//
// 2. Final-Goods Demand Elasticities:
//    - muc:   Consumption elasticity of substitution (1.001 → 0.5)
//    - mutc:  Tradable consumption elasticity (1.001 → 2.5)  
//    - mumc:  Import consumption elasticity (1.001 → 2.5)
//    - mui:   Investment elasticity of substitution (1.001 → 0.5)
//    - muti:  Tradable investment elasticity (1.001 → 2.5)
//    - mumi:  Import investment elasticity (1.001 → 2.5)
//
// 3. Home-Bias Parameters:
//    - nuc:   Consumption home bias (0.5 → US/RW: 0.35, others: 0.65)
//    - nui:   Investment home bias (0.5 → 0.75)
//    - nutc:  Tradable consumption home bias (0.5 → US: 0.85, others: 0.20)
//    - nuti:  Tradable investment home bias (0.5 → US: 0.85, others: 0.20)
//
// 4. Price Setting - Fixed Costs:
//    - psit:  Tradable sector fixed costs (0 → 0.2)
//    - psin:  Non-tradable sector fixed costs (0 → US/RW: 0.08, others: 0.28)
//
// 5. Calvo Price Stickiness Parameters:
//    - xin:   Non-tradable domestic Calvo parameter (0.1 → US/RW: 0.75, others: 0.92)
//    - xih:   Tradable domestic Calvo parameter (0.1 → US/RW: 0.75, others: 0.92)
//    - xix:   Export Calvo parameter (0.1 → 0.75)
//    - xii:   Wage of HH i Calvo parameter (0.1 → 0.75)
//    - xij:   Wage of HH j Calvo parameter (0.1 → 0.75)
//
// 6. Price Indexation Parameters:
//    - chin:  Non-tradable domestic indexation (0 → 0.5)
//    - chih:  Tradable domestic indexation (0 → 0.5)
//    - chix:  Export indexation (0 → 0.5)
//    - chii:  Wage of HH i indexation (0 → 0.75)
//    - chij:  Wage of HH j indexation (0 → 0.75)
//
// 7. Additional Structural Parameters:
//    - sigma:    Risk aversion parameter (SKIPPED - already at target value 1.0)
//    - kappa:    Habit formation (0 → 0.70)
//    - zeta:     Inverse Frisch elasticity (SKIPPED - already at target value 2.0)
//    - gammav1:  Transaction cost 1 (0.02 → 0.0267)
//    - gammav2:  Transaction cost 2 (0.1 → 0.1284)
//    - thetan:   Non-tradable goods markup elasticity (1.1 → US/RW: 4.60, others: 3.00)
//    - thetat:   Tradable goods markup elasticity (1.1 → 6.00)
//    - eta:      Substitution btw. I-type and J-type labor (1.1 → US/RW: 7.25, others: 4.33)
//    - etai:     HH i wage markup elasticity (1.1 → US/RW: 7.25, others: 4.33)
//    - etaj:     HH j wage markup elasticity (1.1 → US/RW: 7.25, others: 4.33)
//
// =============================================================================

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