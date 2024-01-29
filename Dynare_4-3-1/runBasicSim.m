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
cd(fullfile(project_path, 'Dynare_4-3-1','modFiles'));

% calculating the steady state
dynare steady1.mod
dynare steady2.mod
%dynare shock_eab_gy1.mod