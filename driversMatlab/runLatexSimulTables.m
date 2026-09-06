tScript = tic;
%% LaTeX Simulation Tables Generator
% This script processes simulation results and generates LaTeX tables 
% for government investment and consumption multipliers analysis
% Author: [Your Name], Date: [Current Date]

%% Setup and Configuration
% Initialize project paths and environment settings
utils.call.paths;
environment_config = environment.setup();

%% Load and Process Simulation Results
% Initialize storage structure for all simulation results
simulation_raw_results = struct();
simulation_processed_results = struct();

% Get list of all simulations from shock dictionary
simulation_list = string(environment_config.shockDict.Properties.RowNames)';

fprintf('Starting processing of %d simulations...\n\n', length(simulation_list));

% Process each simulation sequentially
for simulation_name = simulation_list
    
    % Display progress information
    fprintf('Processing simulation: %s\n', simulation_name);
    
    % Load raw Dynare simulation output
    results_file_path = fullfile(project_path, 'eagleParsingTemp', 'modFiles', ...
        char(simulation_name), 'Output', [char(simulation_name), '_results.mat']);
    
    fprintf('  - Loading raw results from: %s\n', results_file_path);
    simulation_raw_results.(simulation_name) = load(results_file_path);
    
    % Process raw results for analysis
    fprintf('  - Processing deterministic simulation results\n');
    simulation_processed_results.(simulation_name) = ...
        dynareFunc.retrieveDeterSimul(simulation_raw_results.(simulation_name));
    
    % Calculate Impulse Response Functions for all countries
    fprintf('  - Calculating country-specific IRFs\n');
    simulation_processed_results.(simulation_name).irfValues = ...
        functions.calculateIRFsForCountries( ...
            simulation_raw_results.(simulation_name), ...
            simulation_processed_results.(simulation_name));
    
    fprintf('  - Completed processing for %s\n\n', simulation_name);
end

fprintf('All simulations processed successfully.\n\n');

%% Generate LaTeX Tables
fprintf('Generating LaTeX tables...\n');

% Generate government spending multipliers table
output_table_path = fullfile(project_path, ...
    'docs/2025-02_working-paper/tables/multiplGovSpending.tex');

fprintf('Creating multipliers table: %s\n', output_table_path);
multiplGovSpending(simulation_processed_results, output_table_path);

fprintf('LaTeX table generation completed successfully.\n');
utils.logTiming("tables", "runLatexSimulTables", tScript);
