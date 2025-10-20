function runEAGLEsimul(modelName)
%RUNMONETARYSHOCK Execute monetary policy shock simulation and analysis.
%   runMonetaryShock(MODELNAME) runs the end-to-end analysis for the
%   supported Dynare models specified by MODELNAME.

arguments
    modelName {mustBeTextScalar(modelName)}
end

modelName = char(modelNameStr);

%% Setup and Configuration
% Initialize project paths and environment settings
utils.call.paths;
envi = environment.setup(); %#ok<NASGU> We keep environment metadata accessible if needed

% Model configuration
modFilesDir = fullfile(project_path, 'eagleParsingTemp', 'modFiles');
outputDir = fullfile(project_path, 'docs', '2025-02_working-paper', 'figures');

% Change to model files directory for Dynare execution
previousDir = pwd;
cleanupObj = onCleanup(@() cd(previousDir)); %#ok<NASGU> Ensure directory is restored
cd(modFilesDir);

%% Dynare Model Simulation
% Execute deterministic simulation of monetary policy shock
fprintf('Running Dynare simulation for model: %s\n', modelName);

dynare([modelName, '.mod'], ...
    sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), ...
    'savemacro', ...
    'json=compute');

%% Load and Process Simulation Results
% Load raw Dynare output
resultsFile = fullfile(project_path, 'eagleParsingTemp', 'modFiles', ...
    modelName, 'Output', [modelName, '_results.mat']);
simRawResults = load(resultsFile);

% Process simulation results for analysis
simProcResults = dynareFunc.retrieveDeterSimul(simRawResults);

%% Calculate Impulse Response Functions
fprintf('Calculating IRFs for all countries...\n');

% Calculate IRFs for all countries and variables
simProcResults.irfValues = functions.calculateIRFsForCountries( ...
    simRawResults, simProcResults);

% Export IRF data to CSV for external plotting tools
csvOutputFile = fullfile(outputDir, [modelName, '.csv']);
databank.toCSV( ...
    simProcResults.irfValues, ...
    csvOutputFile, ...
    qq(1, 1):qq(10, 4), ...
    'Comments', false, ...
    'Class', false, ...
    'Decimals', 3 ...
);

fprintf('IRF data exported to: %s\n', csvOutputFile);

%% Contribution Analysis
fprintf('Calculating contribution series...\n');

% Calculate contributions for key Euro Area variables
targetVariables = ["EA_y", "EA_pic4"];  % Output and 4-quarter inflation
contributionSeries = dynareFunc.calculateContributions( ...
    targetVariables, simRawResults.M_, simProcResults);

%% Generate Visualizations
fprintf('Generating plots and charts...\n');

% Generate MATLAB-based country decomposition plots
plotting.WP.eaCntryDecomposition(contributionSeries, modelName);

% Generate Python-based IRF charts with custom styling
pythonScript = fullfile(project_path, 'driversPython', 'plotIRFs.py');
pyrunfile(pythonScript, ...
    'project_path', project_path, ...
    'model_name', modelName);

%% Completion Summary
fprintf('\n=== Monetary Shock Analysis Complete ===\n');
fprintf('Model: %s\n', modelName);
fprintf('Output directory: %s\n', outputDir);
fprintf('Generated files:\n');
fprintf('  - %s.csv (IRF data)\n', modelName);
fprintf('  - %s_irfs.html/pdf/png (IRF charts)\n', modelName);
fprintf('  - Country decomposition plots\n');
fprintf('==========================================\n');
end
