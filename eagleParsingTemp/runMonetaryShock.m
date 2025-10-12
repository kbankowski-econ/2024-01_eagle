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

%%

% global variable has to be declared so that it is passed on to
% createContributions function
global M_
M_ = monetarySimOutput.M_;

aItemList = ["EA_y", "EA_pic4"];
allItemList = aItemList;

for aItem = aItemList
    [ ...
        contributionSeries.total.(aItem) ...
        , contributionSeries.contrib.(aItem) ...
        , contributionSeries.lhs.(aItem) ...
        ] = createContributions( ...
            char(aItem) ...
            , convertFunc.Series2Dseries(monetarySimStruct.endoValues) ...
            , convertFunc.Series2Dseries(monetarySimStruct.ssValues) ...
        );
    allItemList = [allItemList, contributionSeries.contrib.(aItem).Comment];

    % Dynare decomposition is always an absolute difference; for this
    % reason we need this transformation with rescaling of
    % contributions
    % the explanation on the validity of re-scaling is here: investigations/contribution-rescaling.pdf
    tempComment = contributionSeries.contrib.(aItem).Comment;
    contributionSeries.total.(aItem) = monetarySimStruct.irfValues.(aItem);
    contributionSeries.contrib.(aItem) = contributionSeries.contrib.(aItem)/sum(contributionSeries.contrib.(aItem), 2)*monetarySimStruct.irfValues.(aItem);
    % we have to do it because it is overwritten and blank
    contributionSeries.contrib.(aItem).Comment = tempComment;
    
end

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

%% investigating interest rate reaction upon the request from Sandra
plotting.WP.eaCntryDecomposition(contributionSeries);
