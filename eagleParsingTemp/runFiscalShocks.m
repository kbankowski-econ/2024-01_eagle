% % cding to a proper folder
% cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));
% 
% %% deterministic simulation
% dynare('shock_eab_gy1.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
% 
% %% deterministic simulation
% dynare('shock_eab_gy2.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
% 
% %% deterministic simulation (ea investment)
% dynare('shock_eab_gy3.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
% 
% %% deterministic simulation (ea consumption)
% dynare('shock_eab_gy4.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');

%% analying the output of the simulation
% contribStructure = struct();
% contribStructureEs.Gc = brignSimulationResults('shock_eab_gy2');
% contribStructureEs.Gi = brignSimulationResults('shock_eab_gy1');
contribStructureEa.Gc = brignSimulationResults('shock_eab_gy4');
% contribStructureEa.Gi = brignSimulationResults('shock_eab_gy3');


% %% investigating interest rate reaction upon the request from Sandra
% panelContributions(contribStructureEs, project_path, "ES");
% 
% %%
% panelContributions(contribStructureEa, project_path, "EA");

%%
function contributionSeries = brignSimulationResults(simName)

    utils.call.paths;

    structSimul = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', simName, 'Output', [simName, '_results.mat']));
    
    dataRange = qq(0, 4): qq(0, 4)+size(structSimul.oo_.endo_simul', 1) - 1;
    endoStruct = struct(); ssStruct = struct(); irfStruct = struct();
    
    endoStruct = databank.fromArray( ...
        structSimul.oo_.endo_simul' ...
        , structSimul.M_.endo_names ...
        , dataRange(1) ...
    );
    ssStruct = databank.fromArray( ...
        repmat(structSimul.oo_.steady_state', numel(dataRange), 1) ...
        , structSimul.M_.endo_names ...
        , dataRange(1) ...
    );
    for aParam = string(reshape(structSimul.M_.param_names, 1, []))
        paramStruct.(aParam) = structSimul.M_.params(strcmp(aParam, structSimul.M_.param_names));
    end
    
    aEndoVar = "EA_y";
    irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)/ssStruct.(aEndoVar)-1)*100;
    % aEndoVar = "EAH_y";
    % irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)/ssStruct.(aEndoVar)-1)*100;
    % aEndoVar = "EAM_y";
    % irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)/ssStruct.(aEndoVar)-1)*100;
    % aEndoVar = "EAM_ex";
    % irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)/ssStruct.(aEndoVar)-1)*100;
    % aEndoVar = "EAM_r";
    % irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)-ssStruct.(aEndoVar))*100;
    aEndoVar = "EA_pic4";
    irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)-ssStruct.(aEndoVar))*100;
    
    
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

        % Dynare decomposition is always an absolute difference; for this
        % reason we need this transformation with rescaling of
        % contributions
        tempComment = contributionSeries.contrib.(aItem).Comment;
        contributionSeries.total.(aItem) = irfStruct.(aItem);
        contributionSeries.contrib.(aItem) = contributionSeries.contrib.(aItem)/sum(contributionSeries.contrib.(aItem), 2)*irfStruct.(aItem);
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

end

function panelContributions(contribStructure, projectPath, shockedCtry)

    % ctry lists
    ctryListModNames = ["RA", "AT", "BE", "FI", "FR", "NL", "ES", "GR", "IT", "PT", "DE"];
    ctryListStdNames = ["EA rest", "AT", "BE", "FI", "FR", "NL", "ES", "GR", "IT", "PT", "DE"]; 
    simulationList = ["Gc", "Gi"];
    simulationTitles = ["gov. consumption", "gov. investment"]
    % Please specify the list of the variables to plot   
    VarListToPlot = string(reshape(fieldnames(contribStructure.Gc.total), 1, []));
    
    % Please specify the date range of the series
    DateRange = qq(1,1):qq(10,4);
    aShift = 0;
    DateRangeNorm = DateRange - aShift;
    DateRangeDateTime = dater.toMatlab(DateRangeNorm);
    
    % Plotting
    figure
    
    % Defining the shape of the figure
    tiledlayout_width = 2; %Specify the # of columns desired
    tiledlayout_height = 2;
    
    t = tiledlayout(tiledlayout_height, tiledlayout_width, 'TileSpacing', 'compact','Padding','compact');
    
    h = gcf;
    set(h, 'Units','centimeters', 'Position',[0 0 14 5.5])
    set(h,'defaulttextinterpreter','latex');
    
    for aSimulation = simulationList

        for aItem = VarListToPlot %for each panel
            nexttile;
            grid on
            hold on 
        
            % Seeting of the title
            aTitle = sprintf('%s (decomposition of %s)', simulationTitles(aSimulation == simulationList), contribStructure.(aSimulation).lhs.(aItem));        
            title( ...
                aTitle ...
                , 'Fontsize', 7 ...
                , 'Fontweight', 'normal' ...
            );
        
            % actual data
                bars_ = barcon( ...
                    contribStructure.(aSimulation).contrib.(aItem){DateRange} ...
                    , "ColorMap", cell2mat(contribStructure.(aSimulation).colorTable{contribStructure.(aSimulation).contrib.(aItem).Comment, :}) ...
                    , 'EdgeColor', 'none');
            % targets
                line_ = plot( ...
                    contribStructure.(aSimulation).total.(aItem){DateRange} ...
                    , 'color', cell2mat(contribStructure.(aSimulation).colorTable{aItem, :}) ...
                    , 'linewidth', 2 ...
                    , 'Marker', '_' ...
                    , 'MarkerFaceColor', rgb('black') ...
                    , 'MarkerEdgeColor', rgb('black') ...
                    , 'MarkerSize', 4 ...
                    );
            
            hold off
        
            % Setting of the x and y axis
            xtickformat(gca,'yy')
        
            set(gca ...
                , 'Xtick', DateRangeDateTime(1:12:end) ...
                , 'Fontsize', 6 ...
                , 'Box', 'off' ...
                , 'TickLabelInterpreter','latex' ...
            );

            ax = gca;
            ax.YAxis.Exponent = 0;
            ax.YAxis.TickLabelFormat = '%.2f';
        
        end 
    end

    legendLabels = [ctryListStdNames, "EA total"];
    leg = legend( ...
        [bars_, line_] ...
        , legendLabels ...
        , 'location', 'northoutside' ...
        , 'Interpreter','latex' ...
        , 'Fontsize', 5 ...
        , 'NumColumns', 3 ...
        );
    leg.Layout.Tile = 'north'; 

    % Save graph
    fileName = fullfile(projectPath, "docs/2024-12_RCC-workshop/figures/effectGov"+shockedCtry);
    exportgraphics(t, sprintf('%s.png',fileName),'BackgroundColor','none');
end
