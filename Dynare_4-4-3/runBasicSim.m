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
cd(fullfile(project_path, 'Dynare_4-4-3','modFiles'));

% calculating the steady state
if true
    dynare steady1.mod
    dynare steady2.mod
end

% shock simulation: 4-period g shock in EAB region
dynare shock_eab_gy1.mod

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