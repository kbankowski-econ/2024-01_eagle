%% preamble
clear all; close all; clc; restoredefaultpath
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
addpath(dynare_6_0);
dynare_config

%% --------------------
%  Setting up  options
%  --------------------
options_ecb.mod_run = 'nostrict';
options_ecb.mod_path = sprintf('-I%s/%s/submodules', project_path, 'ecbBase');
options_ecb.simulation = 1; % Do we want to simulate long-run model yes=1 and no=0 
options_ecb.normalization = 1; % Do we want to normalize dataset yes=1 and no=0 
norm_years = 200; % Normalization horizon #of_years
options_dynare.solve_algo = 0; % Define algorithm to be used by Dynare
options_dynare.solve_tolf = 1e-5; % Define precision of the used solver
options.runParsing = true;


%% ----------------------
%  Parsing all mod files
%  ----------------------
cd(fullfile(project_path, 'ecbBase','modFiles'));

fprintf('Parsing %s ...\n', "Longrun")

dynare(sprintf('EA_%s', "Longrun"), options_ecb.mod_run, options_ecb.mod_path, 'nopreprocessoroutput');

try % To avoid json issue (here we absolutely need the json option)
    dynare(sprintf('EA_%s', "Longrun"), options_ecb.mod_run, options_ecb.mod_path, 'nopreprocessoroutput');
catch
    dynare(sprintf('EA_%s', "Longrun"), options_ecb.mod_run, options_ecb.mod_path, 'nopreprocessoroutput');
end
endo =  M_.endo_names(~contains(M_.endo_names, 'AUX_'));
% Creating .inc files which contain all informations on the model
utils.ParseModel(sprintf('EA_%s', "Longrun"), sprintf('Parsed_EA_%s', "Longrun"), endo, 1)