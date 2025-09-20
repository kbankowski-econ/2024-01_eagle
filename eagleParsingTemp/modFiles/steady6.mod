// =============================================================================
// STEADY STATE HOMOTOPY METHOD - STAGE 6
// =============================================================================
//
// STAGE 6 PARAMETER GROUPS:
// 1. Trade Matrix Calibration:
//    - imcy:  Bilateral import ratios (country-specific)
//    - imcgy: Bilateral import ratios (country-specific)
//    - imiy:  Bilateral import ratios (country-specific)
//    - imigy: Bilateral import ratios (country-specific)
//    - imcy:  Country total import ratios (country-specific)
//    - imcgy: Country total import ratios (country-specific)
//    - imiy:  Country total import ratios (country-specific)
//    - imigy: Country total import ratios (country-specific)
//    - size:  Country size (0.07143 → country-specific)
//    - tby:   Trade balance (RU: -0.00493, RW: -0.00493, US: -0.005068, others: 0.001849 → country-specific)
//    - nuc:   Consumption home bias (US/RW: 0.35, others: 0.65 → RA: 0.9, US: 0.45)
//
// 2. Policy Rule Parameters (for dynamic model):
//    - phitb:    Fiscal rule parameter (0.1 → 0.1)
//    - phirr:    Monetary policy interest rate smoothing (0.75 → 0.87, except for RU unchanged)
//    - phirpi:   Monetary policy inflation response (1.5 → 1.70, except for RU unchanged)
//    - phirgy:   Monetary policy output gap response (0 → 0.10, except for RU unchanged)
//
// 3. Adjustment and Transaction Cost Parameters (for dynamic model):
//    - gammai1:   Investment adjustment costs (1 → US/RW: 4.00, others: 6.00)
//    - gammau2:   Capacity utilization costs (1 → 2000)
//    - gammaimc1:  Import consumption adjustment costs (1 → 2.00)
//    - gammaimcg1: Government import consumption adjustment costs (1 → 2.00)
//    - gammaimi1:  Import investment adjustment costs (1 → 1.00)
//    - gammaimig1: Government import investment adjustment costs (1 → 1.00)
//    - gammab1:   Foreign bond adjustment costs (0.2 → 0.01)
//
// =============================================================================

//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls_govInv.mod"

// Flip variables

@#for co in countries
change_type(parameters) @{co}_iy @{co}_imcy @{co}_imiy @{co}_imcgy @{co}_imigy;
change_type(var) @{co}_psit @{co}_nutc @{co}_nuti @{co}_nutcg @{co}_nutig;
@#endfor

@#for co in countries  - [ countries[ctryNumber]]
change_type(parameters) @{co}_tby;
change_type(var) @{co}_bfytarget;
@#endfor

@#for i in 1:ctryNumber
@#include "dynamicCtryList7.mod"
@#for it in countries - [ countries[i], coResid]
change_type(parameters) @{countries[i]}@{it}_imcy @{countries[i]}@{it}_imiy @{countries[i]}@{it}_imcgy @{countries[i]}@{it}_imigy;
change_type(var) @{countries[i]}@{it}_numc @{countries[i]}@{it}_numi @{countries[i]}@{it}_numcg @{countries[i]}@{it}_numig;
@#endfor
@#endfor

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_govInv.txt');

// Trade matrix

disp('Trade matrix')
homotopy_setup;

@#include "trade_matrix_values_calibrated_new.mod"

end;
steady(homotopy_steps = 15);

//---------------------------------------------------------//
// Change parameters that appear only in the dynamic model //
// (no SS solution needed)                                 //
//---------------------------------------------------------//

// Fiscal policy rule
@#for co in countries
@{co}_phitb = 0.1;
@#endfor

// Monetary policy rule
@#for co in [countries[ctryNumber-2], countries[ctryNumber-1], countries[ctryNumber], ea]
    @{co}_phirr  = 0.87;
    @{co}_phirpi = 1.70;
    @{co}_phirgy = 0.10;
@#endfor

// Adjustment and transaction cost
@#for co in countries
    @#if co=="RW" || co=="US"
        @{co}_gammai1= 4.00;
    @#else
        @{co}_gammai1= 6.00;
    @#endif
@#endfor

@#for co in countries
@{co}_gammau2= 2000;
@#endfor

@#for co in countries
@{co}_gammaimc1= 2.00;
@#endfor

@#for co in countries
@{co}_gammaimcg1= 2.00;
@#endfor

@#for co in countries
@{co}_gammaimi1= 1.00;
@#endfor

@#for co in countries
@{co}_gammaimig1= 1.00;
@#endfor

@#for co in countries
@{co}_gammab1= 0.01;
@#endfor


save_params_and_steady_state('eagle_steady_stage_trade.txt');