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

%% --------------------
%  Setting up  options
%  --------------------
options_ecb.mod_run = 'nostrict';
options_ecb.mod_path = sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp');
options_ecb.simulation = 1; % Do we want to simulate long-run model yes=1 and no=0 
options_ecb.normalization = 1; % Do we want to normalize dataset yes=1 and no=0 
norm_years = 200; % Normalization horizon #of_years
options_dynare.solve_algo = 0; % Define algorithm to be used by Dynare
options_dynare.solve_tolf = 1e-5; % Define precision of the used solver
options.runParsing = true;


%% ----------------------
%  Loading the model and saving the mod file
%  ----------------------
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

try % To avoid json issue (here we absolutely need the json option)
    dynare(sprintf('eagleModel'), options_ecb.mod_run, options_ecb.mod_path, 'nopreprocessoroutput', 'savemacro');
catch
    dynare(sprintf('eagleModel'), options_ecb.mod_run, options_ecb.mod_path, 'nopreprocessoroutput', 'savemacro');
end