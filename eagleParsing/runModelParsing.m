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
options_ecb.mod_path = sprintf('-I%s/%s/submodules', project_path, 'eagleParsing');
options_ecb.simulation = 1; % Do we want to simulate long-run model yes=1 and no=0 
options_ecb.normalization = 1; % Do we want to normalize dataset yes=1 and no=0 
norm_years = 200; % Normalization horizon #of_years
options_dynare.solve_algo = 0; % Define algorithm to be used by Dynare
options_dynare.solve_tolf = 1e-5; % Define precision of the used solver
options.runParsing = true;


%% ----------------------
%  Parsing all mod files
%  ----------------------
cd(fullfile(project_path, 'eagleParsing','modFiles'));

fprintf('Parsing %s ...\n', "eagleModel")

try % To avoid json issue (here we absolutely need the json option)
    dynare(sprintf('eagleModel'), options_ecb.mod_run, options_ecb.mod_path, 'nopreprocessoroutput');
catch
    dynare(sprintf('eagleModel'), options_ecb.mod_run, options_ecb.mod_path, 'nopreprocessoroutput');
end
endo =  M_.endo_names(~contains(M_.endo_names, 'AUX_'));
endoProblematic = {...
    'EAAEAB_imi'
    'RWUS_imi'
    'EABRW_imi'
    'USEAA_imi'
    'EAAEAB_imc'
    'RWUS_imc'
    'EABRW_imc'
    'USEAA_imc'
    'EAA_mi'
    'EAB_mi'
    'RW_mi'
    'US_mi'
    'EAA_rer'
    'EAB_rer'
    'RW_rer'
    'US_rer'
    'EAA_w' 
    'EAB_w'
    'RW_w'
    'US_w'
    'EAB_bh'
    };

endoAdjusted = setdiff(endo, endoProblematic);
% Creating .inc files which contain all informations on the model
utils.ParseModel(sprintf('eagleModel'), sprintf('Parsed_eagleModel'), endoAdjusted, false)