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
dynare('shock_eab_gy1.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp_sim_BIG1'), 'savemacro', 'json=compute');

eabGy1Databank = databank.fromArray(oo_.endo_simul', M_.endo_names, qq(0,4));
serToPlot = (eabGy1Databank.EAB_cgy-eabGy1Databank.EAB_cgy(qq(0,4)))*100;
plot(serToPlot{qq(1,1): qq(50,4)});
title('EAB GY')
ylabel('p.p. deviation from steady state')

%%
serToPlot= (eabGy1Databank.EAA_yst-eabGy1Databank.EAA_yst(qq(0,4)))*100;
plot(serToPlot1{qq(1,1): qq(50,4)});
title('EAA YST')
ylabel('p.p. deviation from steady state')

%%
serToPlot= (eabGy1Databank.EAA_ysn-eabGy1Databank.EAA_ysn(qq(0,4)))*100;
plot(serToPlot2{qq(1,1): qq(50,4)});
title('EAA YSN')
ylabel('p.p. deviation from steady state')

%%
serToPlot= (eabGy1Databank.EAB_yst-eabGy1Databank.EAB_yst(qq(0,4)))*100;
plot(serToPlot1{qq(1,1): qq(50,4)});
title('EAB YST')
ylabel('p.p. deviation from steady state')

%%
serToPlot= (eabGy1Databank.EAB_ysn-eabGy1Databank.EAB_ysn(qq(0,4)))*100;
plot(serToPlot1{qq(1,1): qq(50,4)});
title('EAB YSN')
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

%% investigating interest rate reaction upon the request from Sandra
panelContributions(contributionSeries, project_path);

%% stochastic simulation
dynare('eagleModelFiscalShocksStoch.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp_sim_BIG1'));

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
    fileName = fullfile(projectPath, "docs/fiscalContributions_Big1");
    exportgraphics(t, sprintf('%s.png',fileName),'BackgroundColor','none');
end
