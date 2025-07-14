% cding to a proper folder
utils.call.paths;
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));
% 
%% deterministic simulation
dynare('shock_at_gc.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_at_gi.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_be_gc.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_be_gi.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_es_gc.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_es_gi.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_fi_gc.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_fi_gi.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_fr_gc.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_fr_gi.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_gr_gc.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_gr_gi.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_it_gc.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_it_gi.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_nl_gc.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_nl_gi.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_pt_gc.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_pt_gi.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_de_gc.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
dynare('shock_de_gi.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
 
%% deterministic simulation (ea investment)
%dynare('shock_eab_gy3.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');
 
%% deterministic simulation (ea consumption)
%dynare('shock_eab_gy4.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');

%% analying the output of the simulation
contribStructure = struct();
contribStructureAT.Gc = brignSimulationResults('shock_at_gc');
contribStructureAT.Gi = brignSimulationResults('shock_at_gi');
contribStructureBE.Gc = brignSimulationResults('shock_be_gc');
contribStructureBE.Gi = brignSimulationResults('shock_be_gi');
contribStructureES.Gc = brignSimulationResults('shock_es_gc');
contribStructureES.Gi = brignSimulationResults('shock_es_gi');
contribStructureFI.Gc = brignSimulationResults('shock_fi_gc');
contribStructureFI.Gi = brignSimulationResults('shock_fi_gi');
contribStructureFR.Gc = brignSimulationResults('shock_fr_gc');
contribStructureFR.Gi = brignSimulationResults('shock_fr_gi');
contribStructureGR.Gc = brignSimulationResults('shock_gr_gc');
contribStructureGR.Gi = brignSimulationResults('shock_gr_gi');
contribStructureIT.Gc = brignSimulationResults('shock_it_gc');
contribStructureIT.Gi = brignSimulationResults('shock_it_gi');
contribStructureNL.Gc = brignSimulationResults('shock_nl_gc');
contribStructureNL.Gi = brignSimulationResults('shock_nl_gi');
contribStructurePT.Gc = brignSimulationResults('shock_pt_gc');
contribStructurePT.Gi = brignSimulationResults('shock_pt_gi');
contribStructureDE.Gc = brignSimulationResults('shock_de_gc');
contribStructureDE.Gi = brignSimulationResults('shock_de_gi');
%% ea 
contribStructureEa.Gc = brignSimulationResults('shock_eab_gy4');
contribStructureEa.Gi = brignSimulationResults('shock_eab_gy3');
%% investigating interest rate reaction upon the request from Sandra
 panelContributions(contribStructureAT, project_path, "AT"); 
 panelContributions(contribStructureBE, project_path, "BE");  
 panelContributions(contribStructureES, project_path, "ES"); 
 panelContributions(contribStructureFI, project_path, "FI"); 
 panelContributions(contribStructureFR, project_path, "FR"); 
 panelContributions(contribStructureGR, project_path, "GR"); 
 panelContributions(contribStructureIT, project_path, "IT"); 
 panelContributions(contribStructureNL, project_path, "NL"); 
 panelContributions(contribStructurePT, project_path, "PT"); 
 panelContributions(contribStructureDE, project_path, "DE");
%%
panelContributions(contribStructureEa, project_path, "EA");
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
    ctryListModNames = ["AT", "BE", "DE", "ES", "FI", "FR", "GR", "IT", "NL", "PT", "RA"];
    ctryListStdNames = ["AT", "BE", "DE", "ES", "FI", "FR", "GR", "IT", "NL", "PT", "EA rest"]; 
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
    fileName = fullfile(projectPath, "docs/2025-02_working-paper/figures/effectGov"+shockedCtry);
    exportgraphics(t, sprintf('%s.png',fileName),'BackgroundColor','none');
end
