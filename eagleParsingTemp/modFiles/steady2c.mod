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
change_type(var) @{co}_gammav2 @{co}_gammav1 @{co}_psit @{co}_nutc @{co}_nuti @{co}_nutcg @{co}_nutig;
@#endfor

@#for i in 1:ctryNumber
@#include "dynamicCtryList7.mod"
@#for it in countries - [ countries[i], coResid]
change_type(parameters) @{countries[i]}@{it}_imcy @{countries[i]}@{it}_imiy @{countries[i]}@{it}_imcgy @{countries[i]}@{it}_imigy;
change_type(var) @{countries[i]}@{it}_numc @{countries[i]}@{it}_numi @{countries[i]}@{it}_numcg @{countries[i]}@{it}_numig;
@#endfor
@#endfor

@#include "modeqs.mod"

load_params_and_steady_state('eagle_steady_stage2b.txt');

//---------------------------------------------------------//
// Change parameters that appear only in the dynamic model //
//---------------------------------------------------------//

// Fiscal policy rule
@#for co in countries
@{co}_phitb = 0.1;
@#endfor

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

save_params_and_steady_state('eagle_steady.txt');
