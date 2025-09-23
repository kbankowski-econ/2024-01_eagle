% Clearing workspace.
clear all; close all; clc;
utils.call.paths;
envi = environment.setup;

%% Loading the staedy state results
modelResults = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady7', 'Output', 'steady7_results.mat'));
steady7struct = dynareFunc.retrieveSteadyState(modelResults);

%% Plotting for the paper
csv_path = fullfile(project_path, 'data', 'imports_graph.csv');
plotting.WP.importContent_csv(envi, csv_path);
csv_path = fullfile(project_path, 'data', 'raw_data', 'import_graph.csv');
plotting.WP.importGdpShare_csv(envi, csv_path);