%% preamble
clear all; close all; clc; restoredefaultpath
% Add some paths
currentFolder = pwd; % Get current directory
[parentFolder, ~, ~] = fileparts(currentFolder);
addpath(genpath(parentFolder));

%% performing data transformation
fprintf('\n\n\n+++ Initialising the project ...\n');
% calling a specific user input not tracked by GIT
utils.call.paths;
% Call Iris
addpath(iris_path);
iris.startup
% Call Dynare
addpath(dynare_6_0);
dynare_config

%% ----------------
% Loading the databases
%  ----------------
plotDatabank.model = load(fullfile(project_path, 'eagleParsingTemp_sim_BIG1', 'modFiles', 'shock_eab_gy1', 'Output', 'shock_eab_gy1_results.mat'));
M_ = plotDatabank.model.M_;

dataRange = qq(0, 4): qq(0, 4)+size(plotDatabank.model.oo_.endo_simul', 1) - 1;
endoStruct.model = struct(); ssStruct.model = struct(); irfStruct.model = struct();

endoStruct.model = databank.fromArray( ...
    plotDatabank.model.oo_.endo_simul' ...
    , M_.endo_names ...
    , dataRange(1) ...
);
ssStruct.model = databank.fromArray( ...
    repmat(plotDatabank.model.oo_.steady_state', numel(dataRange), 1) ...
    , M_.endo_names ...
    , dataRange(1) ...
);
for aParam = string(reshape(plotDatabank.model.M_.param_names, 1, []))
    paramStruct.model.(aParam) = plotDatabank.model.M_.params(strcmp(aParam, plotDatabank.model.M_.param_names));
end

%% Plotting for the paper draft
plotting.dataSection1(MainDb);
plotting.dataSection2(MainDb);
plotting.dataSection3(MainDb);
plotting.sgpTargets(CalcsDb);
plotting.complianceGap(CalcsDb);
plotting.adjNeeds(CalcsDb);
plotting.cyclicalityAll(Db2SimulateSeries);
plotting.IRFsBASEshocks(envi, baseCalcsDb.CalcsDb);
plotting.sgpCounterfactuals(CalcsDb, CalcsDbBASE_st, CalcsDbBASE_rt);

%% Plotting for the paper draft (appendix)
plotting.varOverviewEA(envi, CalcsDb, MainDb, CalcsDbBASE_st, "EA", "Standard");
plotting.varOverviewEA(envi, CalcsDb, MainDb, CalcsDbBASE_rt, "EA", "RealTime");

for aCountry = [reshape(string(Meta.Lists.Countries.D2), 1,[])]
    plotting.varOverview(CalcsDb, MainDb, aCountry, "Standard");
    plotting.varOverview(CalcsDb, MainDb, aCountry, "RealTime");
end

%% Plotting for the presentation
varOverviewTable = envi.varOverview;

plotting.dataSection1PPT(MainDb);
plotting.dataSection2PPT(MainDb);
plotting.dataSection3PPT(MainDb);
plotting.sgpTargetsPPT(varOverviewTable, CalcsDb);
plotting.complianceGapPPT(varOverviewTable, CalcsDb);
plotting.adjNeedsPPT(varOverviewTable, CalcsDb);
plotting.sgpCounterfactualsPPT(CalcsDb, CalcsDbBASE_st, CalcsDbBASE_rt, false);
plotting.sgpCounterfactualsPPT(CalcsDb, CalcsDbBASE_st, CalcsDbBASE_rt, true);
plotting.varOverviewPPTexample(varOverviewTable, CalcsDb, MainDb, "IT", "Standard");

%% Printing the databases to csv files to track the changes
writeDatabankToCSV(MainDb.Standard, "MainDb.Standard");
writeDatabankToCSV(MainDb.RealTime, "MainDb.RealTime");
writeDatabankToCSV(CalcsDb.Standard.Plan, "CalcsDb.Standard.Plan");
writeDatabankToCSV(CalcsDb.Standard.SGP.NoPlan, "CalcsDb.Standard.SGP.NoPlan");
writeDatabankToCSV(CalcsDb.Standard.AR.NoPlan, "CalcsDb.Standard.AR.NoPlan");
writeDatabankToCSV(CalcsDb.Standard.Perm.NoPlan, "CalcsDb.Standard.Perm.NoPlan");
writeDatabankToCSV(CalcsDb.RealTime.Plan, "CalcsDb.RealTime.SGP.Plan");
writeDatabankToCSV(CalcsDb.RealTime.SGP.NoPlan, "CalcsDb.RealTime.SGP.NoPlan");
writeDatabankToCSV(CalcsDb.RealTime.AR.NoPlan, "CalcsDb.RealTime.AR.NoPlan");
writeDatabankToCSV(CalcsDb.RealTime.Perm.NoPlan, "CalcsDb.RealTime.Perm.NoPlan");

%% charts, which are not used for the paper for now
plotting.eaOverview(varOverviewTable, CalcsDb, MainDb, CalcsDbBASE, "Standard");
plotting.eaOverview(varOverviewTable, CalcsDb, MainDb, CalcsDbBASE, "RealTime");
plotting.eaSummary(varOverviewTable, CalcsDb, MainDb, CalcsDbBASE, "Standard");
plotting.plotIRFs(varOverviewTable, CalcsDb, CalcsDbBASE,CalcsDbBME, "Perm");
plotting.plotIRFs(varOverviewTable, CalcsDb, CalcsDbBASE,CalcsDbBME, "AR");