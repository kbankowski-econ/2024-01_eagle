tScript = tic;
utils.call.paths;
cd(project_path);
envi = environment.setup;

modelResults = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady7', 'Output', 'steady7_results.mat'));
steady7struct = dynareFunc.retrieveSteadyState(modelResults);

%% Functions producing tex tables

% MAIN BODY
% Table 1
ssNationalAccounts(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/ssNationalAccounts.tex'));
% Table 2
govBehaviour(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/govBehaviour.tex'));
% Table 3-6
internationalLinkagesShare(envi, steady7struct, "MC", "private consumption");
internationalLinkagesShare(envi, steady7struct, "MI", "private investment");
internationalLinkagesShare(envi, steady7struct, "MCG", "government consumption");
internationalLinkagesShare(envi, steady7struct, "MIG", "government investment");
% Table 7
monetaryPolicy(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/monetaryPolicy.tex'));

% APPENDIX
% A1
selectedHhFirmGov(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/selectedHhFirmGov.tex'));
% A2
finalGoodProduction(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/finalGoodProduction.tex'));
% A3
realNominalRigidities(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/realNominalRigidities.tex'));
% A4
priceAndWageMarkups(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/priceAndWageMarkups.tex'));
% A5
ssFiscalInstruments(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/ssFiscalInstruments.tex'));
% A6-A9
internationalLinkagesNu(envi, steady7struct, "MC", "private consumption");
internationalLinkagesNu(envi, steady7struct, "MI", "private investment");
internationalLinkagesNu(envi, steady7struct, "MCG", "government consumption");
internationalLinkagesNu(envi, steady7struct, "MIG", "government investment");
utils.logTiming("tables", "runLatexCalibTables", tScript);
