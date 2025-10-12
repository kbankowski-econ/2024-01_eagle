% Loading necessary path variables and environment variables
utils.call.paths;
envi = environment.setup;

% Change to relevant directory
cd(fullfile(project_path, 'eagleParsingTemp', 'modFiles'));

% Specify model name
modelName = 'shock_ea_epsr1';

%% deterministic simulation of the monetary policy shock
dynare([modelName, '.mod'], sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');

%% analying the output of the simulation
simRawResults = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'shock_ea_epsr1', 'Output', [modelName, '_results.mat']));
simProcResults = dynareFunc.retrieveDeterSimul(simRawResults);

%% calculate IRFs

% just adding the substructure with IRFs
simProcResults.irfValues = functions.calculateIRFsForCountries(simRawResults, simProcResults);

% saving the irf values to a csv file for plotting
databank.toCSV( ...
    simProcResults.irfValues ...
    , fullfile(project_path, "docs/2025-02_working-paper/figures/" + modelName + ".csv") ...
    , qq(1, 1): qq(10, 4) ...
    , "Comments", false ...
    , "Class", false ...
    , "Decimals", 3 ...    
);

%% calculating contribution series
contributionSeries = dynareFunc.calculateContributions(["EA_y", "EA_pic4"], simRawResults.M_, simProcResults);

%% investigating interest rate reaction upon the request from Sandra
plotting.WP.eaCntryDecomposition(contributionSeries, modelName);