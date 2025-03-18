% Clearing workspace.
clear all; close all; clc;
utils.call.paths;
envi = environment.setup;

%% Loading the staedy state results
modelResults = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady7', 'Output', 'steady7_results.mat'));
steady7struct = dynareFunc.retrieveSteadyState(modelResults);

%% Plotting for the paper
plotting.WP.importContent(envi, steady7struct);