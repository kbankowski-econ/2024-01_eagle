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
cd(fullfile(project_path, 'Fiscal_ext','modFiles'));

dynare steady0_EAGLE_Fiscal.mod

% calculating the steady state
if true
    dynare steady1_EAGLE_Fiscal.mod
    dynare steady2_EAGLE_Fiscal.mod
end

% shock simulation: gc
dynare EAB_EAGLE_Fiscal_epsgc.mod

% shock simulation: gi
dynare EAB_EAGLE_Fiscal_epsgi.mod