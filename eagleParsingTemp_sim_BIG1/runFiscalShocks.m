%// NOTE: next step is to introduce the missing elements of the
% import content that may be not covered in the loops (see also
% some TODO items; first to load the model and then later to
% solve for its SS)

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

%% cding to a proper folder
cd(fullfile(project_path, 'eagleParsingTemp_sim_BIG1','modFiles'));

%% deterministic simulation
dynare('shock_eab_gy1.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp_sim_BIG1'), 'savemacro');

eabGy1Databank = databank.fromArray(oo_.endo_simul', M_.endo_names, qq(0,4));
serToPlot = (eabGy1Databank.EAB_cgy-eabGy1Databank.EAB_cgy(qq(0,4)))*100;
plot(serToPlot{qq(1,1): qq(50,4)});
title('EAB GY')
ylabel('p.p. deviation from steady state')

%% analying the output of the simulation
fiscalSimOutput = load(fullfile(project_path, 'eagleParsingTemp_sim_BIG1', 'modFiles', 'shock_eab_gy1', 'Output', 'shock_eab_gy1_results.mat'));
M_ = fiscalSimOutput.M_;

dataRange = qq(0, 4): qq(0, 4)+size(fiscalSimOutput.oo_.endo_simul', 1) - 1;
endoStruct = struct(); ssStruct = struct(); irfStruct = struct();

endoStruct = databank.fromArray( ...
    fiscalSimOutput.oo_.endo_simul' ...
    , M_.endo_names ...
    , dataRange(1) ...
);
ssStruct = databank.fromArray( ...
    repmat(fiscalSimOutput.oo_.steady_state', numel(dataRange), 1) ...
    , M_.endo_names ...
    , dataRange(1) ...
);
for aParam = string(reshape(fiscalSimOutput.M_.param_names, 1, []))
    paramStruct.(aParam) = fiscalSimOutput.M_.params(strcmp(aParam, fiscalSimOutput.M_.param_names));
end

[endoStruct.EAA_ysn, ssStruct.EAA_ysn]
[endoStruct.EAB_cgy, ssStruct.EAB_cgy]
[endoStruct.EAB_y, ssStruct.EAB_y]


aEndoVar = "EA_y";
irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)/ssStruct.(aEndoVar)-1)*100;
irfStruct.(aEndoVar) 

aItemList = ["EA_y", "EA_pic4"];
allItemList = aItemList;

% //TODO: move createContributions, Series2Dseries to some function folder
for aItem = aItemList
    [ ...
        contributionSeries.total.(aItem) ...
        , contributionSeries.contrib.(aItem) ...
        , contributionSeries.lhs.(aItem) ...
        ] = createContributions( ...
            char(aItem) ...
            , Series2Dseries(endoStruct) ...
            , Series2Dseries(ssStruct) ...
        );
    allItemList = [allItemList, contributionSeries.contrib.(aItem).Comment];
end

fprintf('DONE')
meta.allItemList = unique(allItemList);

colorTable = table( ...
    'Size',[numel(unique(allItemList)), 1] ...
    , 'VariableTypes', {'cell'} ...
    , 'VariableNames',{'colorIndex'} ...
    , 'RowNames',unique(allItemList) ...
    );
colormapSaved = linspecer(numel(unique(allItemList)));
for aItemIndex = 1:numel(unique(allItemList))
    colorTable{aItemIndex, 1} = {colormapSaved(aItemIndex, :)};
end
contributionSeries.colorTable = colorTable;

%% stochastic simulation
dynare('eagleModelFiscalShocksStoch.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));
