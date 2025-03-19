% Clearing workspace.
clear all; close all; clc;
utils.call.paths;
envi = environment.setup;

%% Loading the staedy state results
modelResults = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady7', 'Output', 'steady7_results.mat'));
steady7struct = dynareFunc.retrieveSteadyState(modelResults);

%% Plotting for the paper
csv_path = fullfile(project_path_io, 'databases', 'tables', 'oecd', 'eu', 'imports_graph.csv');
plotting.WP.importContent_csv(envi, csv_path);