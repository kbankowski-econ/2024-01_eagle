utils.call.paths;
cd(project_path);
envi = environment.setup;


modelResults = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady7', 'Output', 'steady7_results.mat'));
steady7struct = dynareFunc.retrieveSteadyState(modelResults);


%%
% Table 1
ssNationalAccounts(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/ssNationalAccounts.tex'));

hhAndFirmBehavior(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/hhAndFirmBehavior.tex'));
realNominalRigidities(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/realNominalRigidities.tex'));
priceAndWageMarkups(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/priceAndWageMarkups.tex'));
monetaryFiscalPolicy(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/monetaryFiscalPolicy.tex'));
internationalLinkages(envi, steady7struct, "MC", "private consumption");
internationalLinkages(envi, steady7struct, "MI", "private investment");
internationalLinkages(envi, steady7struct, "MCG", "government consumption");
internationalLinkages(envi, steady7struct, "MIG", "government investment");
