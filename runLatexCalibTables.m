utils.call.paths;
cd(project_path);
envi = environment.setup;


steady7output = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady7', 'Output', 'steady7_results.mat'));
steady7struct = struct();

% loading exogenous
for aExoVar = string(reshape(steady7output.M_.exo_names, 1, []))
    steady7struct.exo_names.(aExoVar) = steady7output.oo_.exo_steady_state(strcmp(aExoVar, steady7output.M_.exo_names));
end

% loading parameters
for aParam = string(reshape(steady7output.M_.param_names, 1, []))
    steady7struct.params.(aParam) = steady7output.M_.params(strcmp(aParam, steady7output.M_.param_names));
end

% loading exogenous
varList = steady7output.M_.endo_names(~startsWith(steady7output.M_.endo_names, 'AUX_ENDO_'));
for aVar = string(reshape(varList, 1, []))
    steady7struct.ssValues.(aVar) = steady7output.oo_.steady_state(strcmp(aVar, varList));
end

hhAndFirmBehavior(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/hhAndFirmBehavior.tex'));
ssNationalAccounts(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/ssNationalAccounts.tex'));
realNominalRigidities(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/realNominalRigidities.tex'));
priceAndWageMarkups(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/priceAndWageMarkups.tex'));
monetaryFiscalPolicy(envi, steady7struct, fullfile(project_path, 'docs/2025-02_working-paper/tables/monetaryFiscalPolicy.tex'));
