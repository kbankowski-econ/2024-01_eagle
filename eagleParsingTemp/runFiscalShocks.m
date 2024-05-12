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
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

%% deterministic simulation
dynare('shock_eab_gy1.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');

%% analying the output of the simulation
fiscalSimOutput = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'shock_eab_gy1', 'Output', 'shock_eab_gy1_results.mat'));

dataRange = qq(0, 4): qq(0, 4)+size(fiscalSimOutput.oo_.endo_simul', 1) - 1;
endoStruct = struct(); ssStruct = struct(); irfStruct = struct();

endoStruct = databank.fromArray( ...
    fiscalSimOutput.oo_.endo_simul' ...
    , M_.endo_names ...
    , dataRange ...
);
ssStruct = databank.fromArray( ...
    repmat(oo_.steady_state', numel(dataRange), 1) ...
    , M_.endo_names ...
    , dataRange ...
);
for aParam = string(reshape(fiscalSimOutput.M_.param_names, 1, []))
    paramStruct.(aParam) = fiscalSimOutput.M_.params(strcmp(aParam, fiscalSimOutput.M_.param_names));
end

[endoStruct.EAE_y, ssStruct.EAE_y]
[endoStruct.EAE_yst, ssStruct.EAE_yst]
[endoStruct.EAE_ysn, ssStruct.EAE_ysn]
[endoStruct.EAA_ysn, ssStruct.EAA_ysn]
[endoStruct.EAE_pic4, ssStruct.EAE_pic4]
[endoStruct.EAE_cgy, ssStruct.EAE_cgy]
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
panelContributions(contributionSeries, project_path);

%% stochastic simulation
dynare('eagleModelFiscalShocksStoch.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));

%%
function panelContributions(contributionSeries, projectPath, subProjectPath)

    % Please specify the list of the variables to plot   
    VarListToPlot = string(reshape(fieldnames(contributionSeries.total), 1, []));
    
    % Please specify the date range of the series
    DateRange = qq(1,1):qq(5,4);
    aShift = 0;
    DateRangeNorm = DateRange - aShift;
    DateRangeDateTime = dater.toMatlab(DateRangeNorm);
    
    % Plotting
    figure
    
    % Defining the shape of the figure
    tiledlayout_width = 1; %Specify the # of columns desired
    tiledlayout_height = 2;
    
    t = tiledlayout(tiledlayout_height, tiledlayout_width, 'TileSpacing', 'compact','Padding','compact');
    
    h = gcf;
    FigureHeight = min(29.7, tiledlayout_height*6.5);
    set(h, 'Units','centimeters', 'Position',[0 0 21-2*2.5 20-2*2.5])
    set(h,'defaulttextinterpreter','latex');
    
    for aItem = VarListToPlot %for each panel
        nexttile;
        grid on
        hold on 
    
        % Seeting of the title
        aTitle = sprintf('Decomposition of %s', contributionSeries.lhs.(aItem));        
        title( ...
            aTitle ...
            , 'Fontsize', 7 ...
            , 'Fontweight', 'normal' ...
        );
    
        % actual data
        try
            bars_ = barcon( ...
                DateRange ...
                , contributionSeries.contrib.(aItem) ...
                , "ColorMap", cell2mat(contributionSeries.colorTable{contributionSeries.contrib.(aItem).Comment, :}) ...
                , 'EdgeColor', 'none');
        catch
        end  
        % targets
        try
            line_ = plot( ...
                DateRange ...
                , contributionSeries.total.(aItem) ...
                , 'color', cell2mat(contributionSeries.colorTable{aItem, :}) ...
                , 'linewidth', 2 ...
                , 'Marker', '_' ...
                , 'MarkerFaceColor', rgb('black') ...
                , 'MarkerEdgeColor', rgb('black') ...
                , 'MarkerSize', 4 ...
                );
        catch
        end
        
        hold off
    
        % Setting of the x and y axis
        xtickformat(gca,'yyQQQ')
    
        set(gca ...
            , 'Xtick', DateRangeDateTime(1:4:end) ...
            , 'Fontsize', 7 ...
            , 'Box', 'off' ...
            , 'TickLabelInterpreter','latex' ...
        );
    
        legendLabels = replace([contributionSeries.contrib.(aItem).Comment, aItem], "_", "\_");
        legend( ...
            [bars_, line_] ...
            , legendLabels ...
            , 'location', 'northoutside' ...
            , 'Interpreter','latex' ...
            , 'Fontsize', 6 ...
            , 'NumColumns', 2 ...
            );
    
    
    end 
        
    % Save graph
    fileName = fullfile(projectPath, "docs/fiscalContributions");
    exportgraphics(t, sprintf('%s.png',fileName),'BackgroundColor','none');
end
