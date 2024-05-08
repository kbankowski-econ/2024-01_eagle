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
% Call Dynare
addpath(dynare_6_0);
dynare_config

%% cding to a proper folder
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

%% deterministic simulation
dynare('shock_eab_gy1.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% stochastic simulation
dynare('eagleModelFiscalShocksStoch.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));
