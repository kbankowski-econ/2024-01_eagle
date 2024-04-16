%// NOTE: next step is to introduce the missing elements of the
% import content that may be not covered in the loops (see also
% some TODO items; first to load the model and then later to
% solve for its SS)

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
addpath(dynare_7_2024_04_12_1835);
dynare_config

%% cding to a proper folder
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

%% deterministic simulation
dynare('shock_eab_gy1.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

eabGy1Databank = databank.fromArray(oo_.endo_simul', M_.endo_names, qq(0,4));
serToPlot = (eabGy1Databank.EAB_cgy-eabGy1Databank.EAB_cgy(qq(0,4)))*100;
plot(serToPlot{qq(1,1): qq(50,4)});
title('EAB GY')
ylabel('p.p. deviation from steady state')


%% stochastic simulation
dynare('eagleModelFiscalShocksStoch.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));
