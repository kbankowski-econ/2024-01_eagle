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

%% 
resultFolder = 'D:\2025-03_eagle\eagleParsingTemp\modFiles';
outputFolder = 'D:\2025-03_eagle\docs\2025-02_working-paper\tables';
countryList = {'AT','BE','ES','FI','FR','GR','IT','NL','PT','DE'};

% Government consumption shocks (Gc)
shocksTables(resultFolder, outputFolder, countryList, 'gc', 'EA_y');
shocksTables(resultFolder, outputFolder, countryList, 'gc', 'EA_pic4');

% Government investment shocks (Gi)
shocksTables(resultFolder, outputFolder, countryList, 'gi', 'EA_y');
shocksTables(resultFolder, outputFolder, countryList, 'gi', 'EA_pic4');
