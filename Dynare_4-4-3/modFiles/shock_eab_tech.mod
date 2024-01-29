@#define steady = 0

@#include "init.mod"

@#include "symdecls.mod"

@#include "modeqs.mod"

load_params_and_steady_state('eagle_steady.txt');

steady(solve_algo = 5, markowitz = 5);

shocks;
var EAB_epszt;
periods 1;
values 0.01;
var EAB_epszn;
periods 1;
values 0.01;
end;

simul(periods = 200, stack_solve_algo = 5, markowitz = 5);

figure('Name','Tradable and non-tradable sector productivity shock')
  subplot(1,2,1)
  plot((EAB_zn-EAB_zn(1,1))/EAB_zn(1,1)*100);
  title('EAB ZT');
  ylabel('% deviation from steady state');
  subplot(1,2,2)
  plot((EAB_zn-EAB_zn(1,1))/EAB_zn(1,1)*100);
  title('EAB ZN');
  ylabel('% deviation from steady state');

