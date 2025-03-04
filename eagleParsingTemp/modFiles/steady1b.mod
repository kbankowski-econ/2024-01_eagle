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


save_params_and_steady_state('eagle_steady_stage1b.txt');
