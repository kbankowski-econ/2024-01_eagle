@#define steady = 0

@#include "init.mod"

@#include "symdecls_govInv.mod"

@#include "modeqs_govInv.mod"

load_params_and_steady_state('eagle_steady_govInv_refined.txt');

EAB_rhoig = 0; //if we don't want persistent shock
EAC_rhoig = 0; //if we don't want persistent shock
EAD_rhoig = 0; //if we don't want persistent shock
EAE_rhoig = 0; //if we don't want persistent shock
EAG_rhoig = 0; //if we don't want persistent shock
EAH_rhoig = 0; //if we don't want persistent shock
EAI_rhoig = 0; //if we don't want persistent shock
EAJ_rhoig = 0; //if we don't want persistent shock
EAK_rhoig = 0; //if we don't want persistent shock
EAL_rhoig = 0; //if we don't want persistent shock
EAM_rhoig = 0; //if we don't want persistent shock

steady(solve_algo = 5, markowitz = 5);

shocks;

var EAB_epsgi;
periods 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32;
values 0 0 0 0 0.069 0.069 0.069 0.069 0.134 0.134 0.134 0.134 0.094 0.094 0.094 0.094 0.069 0.069 0.069 0.069 0.028 0.028 0.028 0.028 0 0 0 0 0 0 0 0;

var EAC_epsgi;
periods 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32;
values 0.031 0.031 0.031 0.031 0.09 0.09 0.09 0.09 0.062 0.062 0.062 0.062 0.118 0.118 0.118 0.118 0.147 0.147 0.147 0.147 0.128 0.128 0.128 0.128 0 0 0 0 0 0 0 0;

var EAD_epsgi;
periods 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32;
values 0.003 0.003 0.003 0.003 0.014 0.014 0.014 0.014 0.045 0.045 0.045 0.045 0.151 0.151 0.151 0.151 0.161 0.161 0.161 0.161 0.046 0.046 0.046 0.046 0 0 0 0 0 0 0 0;

var EAE_epsgi;
periods 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32;
values 0.306 0.306 0.306 0.306 0.341 0.341 0.341 0.341 0.189 0.189 0.189 0.189 0.139 0.139 0.139 0.139 0.024 0.024 0.024 0.024 0.092 0.092 0.092 0.092 0 0 0 0 0 0 0 0;

var EAG_epsgi;
periods 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32;
values 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;

var EAH_epsgi;
periods 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32;
values 0.182 0.182 0.182 0.182 0.298 0.298 0.298 0.298 0.545 0.545 0.545 0.545 0.825 0.825 0.825 0.825 1.022 1.022 1.022 1.022 1.083 1.083 1.083 1.083 0.483 0.483 0.483 0.483 0 0 0 0;

var EAI_epsgi;
periods 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32;
values 0.115 0.115 0.115 0.115 0.442 0.442 0.442 0.442 0.757 0.757 0.757 0.757 1.326 1.326 1.326 1.326 1.929 1.929 1.929 1.929 2.775 2.775 2.775 2.775 0 0 0 0 0 0 0 0;

var EAJ_epsgi;
periods 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32;
values 0 0 0 0 0.037 0.037 0.037 0.037 0.038 0.038 0.038 0.038 0.034 0.034 0.034 0.034 0.033 0.033 0.033 0.033 0.029 0.029 0.029 0.029 0 0 0 0 0 0 0 0;

var EAK_epsgi;
periods 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32;
values 0.055 0.055 0.055 0.055 0.354 0.354 0.354 0.354 0.521 0.521 0.521 0.521 1.086 1.086 1.086 1.086 1.472 1.472 1.472 1.472 1.403 1.403 1.403 1.403 0 0 0 0 0 0 0 0;

var EAL_epsgi;
periods 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32;
values 0.031 0.031 0.031 0.031 0.188 0.188 0.188 0.188 0.464 0.464 0.464 0.464 1.053 1.053 1.053 1.053 1.77 1.77 1.77 1.77 1.98 1.98 1.98 1.98 0 0 0 0 0 0 0 0;

var EAM_epsgi;
periods 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32;
values 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;

end;

perfect_foresight_setup(periods = 200);
perfect_foresight_solver(stack_solve_algo=0);