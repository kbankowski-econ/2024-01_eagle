%%
clear all; close all; clc;
utils.call.paths;
cd(fullfile(project_path, 'Dynare_4-4-3','modFiles'));

% just loading the models (both nonSS and SS) to have a macro-exp version
% dynare(sprintf('eagleModel_verNoNss'), 'nopreprocessoroutput', 'savemacro');
% dynare(sprintf('eagleModel_verSS'), 'nopreprocessoroutput', 'savemacro');

% just a test in the context for solving the extended model
% dynare steady0.mod

%%
% calculating the steady state
if false
    dynare('steady1.mod', 'savemacro');
    dynare('steady2.mod', 'savemacro');
end

%%
% shock simulation: 4-period g shock in EAB region
dynare ('shock_eab_gy1.mod', 'savemacro')

eabGy1Databank = databank.fromArray(oo_.endo_simul', M_.endo_names, qq(0,4));
%%
serToPlot = (eabGy1Databank.EAB_y-eabGy1Databank.EAB_y(qq(0,4)))*100;
plot(serToPlot{qq(1,1): qq(50,4)});
title('EAB y')
ylabel('p.p. deviation from steady state')

return

%%
% shock simulation: 4-period g shock in EAB region (with some nuanced shock
% values)
dynare shock_eab_gy2.mod

% shock simulation: productivity shock
dynare shock_eab_tech.mod

% shock simulation: permanent productivity shock
dynare shockperm_ea_techn.mod

% shock simulation: risk premium shock
dynare ea_epsrp.mod

% shock simulation: risk premium shock
dynare ea_epsrp.mod

% shock simulation: monetary policy shock
dynare shock_ea_monpol.mod

%%
%shock simulation: expansionary monetary policy shock 
dynare shock_ea_monpol_exp.mod