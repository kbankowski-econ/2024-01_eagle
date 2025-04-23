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
dynare('shock_ea_epsr1.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');

%%
eaepsrDatabank = databank.fromArray(oo_.endo_simul', M_.endo_names, qq(0,4));
serToPlot = (eaepsrDatabank.DE_r-eaepsrDatabank.DE_r(qq(0,4)))*100;
plot(serToPlot{qq(1,1): qq(50,4)});
title('DE r')
ylabel('p.p. deviation from steady state')

%% analying the output of the simulation
monetarySimOutput = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'shock_ea_epsr1', 'Output', 'shock_ea_epsr1_results.mat'));
M_ = monetarySimOutput.M_;

dataRange = qq(0, 4): qq(0, 4)+size(monetarySimOutput.oo_.endo_simul', 1) - 1;
endoStruct = struct(); ssStruct = struct(); irfStruct = struct();

endoStruct = databank.fromArray( ...
    monetarySimOutput.oo_.endo_simul' ...
    , M_.endo_names ...
    , dataRange(1) ...
);
ssStruct = databank.fromArray( ...
    repmat(monetarySimOutput.oo_.steady_state', numel(dataRange), 1) ...
    , M_.endo_names ...
    , dataRange(1) ...
);
for aParam = string(reshape(monetarySimOutput.M_.param_names, 1, []))
    paramStruct.(aParam) = monetarySimOutput.M_.params(strcmp(aParam, monetarySimOutput.M_.param_names));
end

[endoStruct.RA_ysn, ssStruct.DE_ysn]

aEndoVar = "EA_y";
irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)/ssStruct.(aEndoVar)-1)*100;
irfStruct.(aEndoVar) 

aItemList = ["EA_y"];
allItemList = aItemList;

for aItem = aItemList
    [ ...
        contributionSeries.total.(aItem) ...
        , contributionSeries.contrib.(aItem) ...
        , contributionSeries.lhs.(aItem) ...
        ] = createContributions( ...
            char(aItem) ...
            , functions.plotting1.Series2Dseries(endoStruct) ...
            , functions.plotting1.Series2Dseries(ssStruct) ...
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
    fileName = fullfile(projectPath, "docs/2025-02_working-paper/figures/monetaryContributions");
    exportgraphics(t, sprintf('%s.png',fileName),'BackgroundColor','none');
end
