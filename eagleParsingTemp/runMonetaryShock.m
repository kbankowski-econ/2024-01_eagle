% Loading necessary path variables and environment variables
utils.call.paths;
envi = environment.setup;

% Change to relevant directory
cd(fullfile(project_path, 'eagleParsingTemp', 'modFiles'));

%% deterministic simulation of the monetary policy shock
dynare('shock_ea_epsr1.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');

%% analying the output of the simulation
monetarySimOutput = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'shock_ea_epsr1', 'Output', 'shock_ea_epsr1_results.mat'));
monetarySimStruct = dynareFunc.retrieveDeterSimul(monetarySimOutput);

%% calculate IRFs

% just adding the substructure with IRFs
monetarySimStruct.irfValues = functions.calculateIRFsForCountries(monetarySimOutput, monetarySimStruct);

% saving the irf values to a csv file for plotting
databank.toCSV( ...
    monetarySimStruct.irfValues ...
    , fullfile(project_path, "docs/2025-02_working-paper/figures/irfsMonPolShock.csv") ...
    , qq(1, 1): qq(10, 4) ...
    , "Comments", false ...
    , "Class", false ...
    , "Decimals", 3 ...    
);

%% calculating contribution series
contributionSeries = dynareFunc.calculateContributions(["EA_y", "EA_pic4"], monetarySimOutput.M_, monetarySimStruct);

%% investigating interest rate reaction upon the request from Sandra
plotting.WP.eaCntryDecomposition(contributionSeries);