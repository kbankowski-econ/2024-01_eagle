%% preamble
clear all; close all; clc; restoredefaultpath
% Add some paths
currentFolder = pwd; % Get current directory
[parentFolder, ~, ~] = fileparts(currentFolder);
addpath(genpath(parentFolder));

%% performing data transformation
fprintf('\n\n\n+++ Initialising the project ...\n');
% calling a specific user input not tracked by GIT
utils.call.paths;
% Call Iris
addpath(iris_path);
iris.startup
% Call Dynare
addpath(dynare_6_0);
dynare_config

%%
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

dynare('steady0.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));

% calculating the steady state
if true
    dynare('steady1.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));
    dynare('steady2.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));
end

dynare(sprintf('eagleModel_verSS'), sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'nopreprocessoroutput', 'savemacro');


% % shock simulation: 4-period g shock in EAB region
% dynare shock_eab_gy1.mod
% 
% eabGy1Databank = databank.fromArray(oo_.endo_simul', M_.endo_names, qq(0,4));
% serToPlot = (eabGy1Databank.EAB_gy-eabGy1Databank.EAB_gy(qq(0,4)))*100;
% plot(serToPlot{qq(1,1): qq(50,4)});
% title('EAB GY')
% ylabel('p.p. deviation from steady state')
% 
% % shock simulation: 4-period g shock in EAB region (with some nuanced shock
% % values)
% dynare shock_eab_gy2.mod
% 
% % shock simulation: productivity shock
% dynare shock_eab_tech.mod
% 
% % shock simulation: permanent productivity shock
% dynare shockperm_ea_techn.mod
% 
% % shock simulation: risk premium shock
% dynare ea_epsrp.mod
% 
% % shock simulation: risk premium shock
% dynare ea_epsrp.mod
% 
% % shock simulation: monetary policy shock
% dynare shock_ea_monpol.mod