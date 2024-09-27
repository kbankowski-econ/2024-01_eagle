//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

@#define steady = 1

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#for co in countries
    change_type(parameters) @{co}_iy;
    change_type(var) @{co}_psit;
@#endfor

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_govInv.txt');

disp('iy')

homotopy_setup;

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

save_params_and_steady_state('eagle_steady_govInv_refined.txt');
