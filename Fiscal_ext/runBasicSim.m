%% preamble
clear all; close all; clc;
% Add some paths
currentFolder = pwd; % Get current directory
[parentFolder, ~, ~] = fileparts(currentFolder);
addpath(genpath(parentFolder));

%% performing data transformation
fprintf('\n\n\n+++ Initialising the project ...\n');
% calling a specific user input not tracked by GIT
call_paths;
% Call Iris
addpath(iris_path);
iris.startup
% Call Dynare
addpath(dynare_431);
dynare_config

%%
cd(fullfile(project_path, 'Fiscal_ext','modFiles'));

% calculating the steady state
if true
    dynare steady1_EAGLE_Fiscal.mod
    dynare steady2_EAGLE_Fiscal.mod
end

% shock simulation: 4-period g shock in EAB region
dynare EAB_EAGLE_Fiscal_epsgc.mod

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