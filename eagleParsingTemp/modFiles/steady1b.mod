// =============================================================================
// STEADY STATE HOMOTOPY METHOD - STAGE 1B
// =============================================================================
//
// 1. Fiscal Policy Variables (from included files):
//    - bytarget:  Government debt-to-GDP targets (0 → country-specific)
//    - trybar:    Transfer-to-GDP ratios (2.21e-30 → country-specific)
//    - cgybar:    Government consumption-to-GDP ratios (0.001 → country-specific)
//    - igybar:    Government investment-to-GDP ratios (0.001 → country-specific)
//
// 2. Monetary Policy:
//    - pi4target: Annual inflation targets (1.0 → 1.02, i.e., 2% annual inflation)
//
// 3. Discount Factor:
//    - beta:   Time preference parameter (0.99 → 0.99263754, implies 3% annual real rate)
//
// 4. Tax Rates (from included files):
//    - taucbar:  Consumption tax rates (0 → country-specific)
//    - taunbar:  Tax rates on non-tradable sector (0 → country-specific)
//    - tauwhbar: Home household labor tax rates (0 → country-specific)
//    - tauwfbar: Foreign household labor tax rates (0 → country-specific)
//    - taukbar:  Capital tax rates (0 → country-specific)
//
// 5. Household Heterogeneity (SKIPPED):
//    - omega:    Share of J-type households (already at target 0.25)
//
// 6. Transfer Distribution:
//    - upsilontr: Transfer distribution parameter (1 → 0.66666666)
//    - upsilont:  Lump-sum tax distribution parameter (1 → 1.20)
//
// 7. External Finance:
//    - bfytarget: Foreign bond holdings targets (0 → US/RW/specific: 0.4, others: -0.15)
//
// =============================================================================

options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls.mod"

@#for co in countries
change_type(parameters) @{co}_iy;
change_type(var) @{co}_psit;
@#endfor

@#include "modeqs.mod"

load_params_and_steady_state('eagle_steady_stage1a.txt');

// Fiscal policy

disp('bytarget')
homotopy_setup;
    @#include "debt_bytarget.mod"
end;
steady(homotopy_steps = 5);

disp('trybar')
homotopy_setup;
    @#include "transfers_trybar.mod"
end;
steady(homotopy_steps = 5);

disp('cgybar')
homotopy_setup;
    @#include "shares_cgybar.mod"
end;
steady(homotopy_steps = 5);

disp('igybar')
homotopy_setup;
    @#include "shares_iy.mod"
    @#include "shares_igybar.mod"
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
    @#include "tax_rates_taucbar.mod"
end;
steady(homotopy_steps = 5);

disp('taunbar')
homotopy_setup;
    @#include "tax_rates_taunbar.mod"
end;
steady(homotopy_steps = 5);

disp('tauwhbar')
homotopy_setup;
    @#include "tax_rates_tauwhbar.mod"
end;
steady(homotopy_steps = 5);

disp('tauwfbar')
homotopy_setup;
    @#include "tax_rates_tauwfbar.mod"
end;
steady(homotopy_steps = 5);

disp('taukbar')
homotopy_setup;
    @#include "tax_rates_taukbar.mod"
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


save_params_and_steady_state('eagle_steady_stage1b.txt');
