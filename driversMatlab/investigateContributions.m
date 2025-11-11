%% Conclusion of the investigation, Nov 13, 2025
% The main question was why the effects of a government investment shock
% continue to build and persist beyond the stimulus horizon
% in the output response. By looking at the two types of outputs, tradable and
% non-tradable, it becomes clear that the persistence is driven
% by the accumulation of public capital. Even with a modest public-capital
% productivity of 0.05 percent, the resulting effects are still sizable.
% This behaviour is consistent with the findings in Clancy (year) and
% with Pascal’s simulation results for the NGEU evaluation project.


% Loading necessary path variables and environment variables
utils.call.paths;
envi = environment.setup;

% Change to relevant directory
cd(fullfile(project_path, 'eagleParsingTemp', 'modFiles'));

% Name of the model
modelName = 'shock_it_gi_temp';

%% we need an updated json file
dynare([modelName, '.mod'], ...
    sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), ...
    'json=transform', 'onlyjson', 'nolog');

%% Load and Process Simulation Results
% Load raw Dynare output
resultsFile = fullfile(project_path, 'eagleParsingTemp', 'modFiles', ...
    modelName, 'Output', [modelName, '_results.mat']);
simRawResults = load(resultsFile);

% Process simulation results for analysis
simProcResults = dynareFunc.retrieveDeterSimul(simRawResults);

% Calculate IRFs for all countries and variables
simProcResults.irfValues = functions.calculateIRFsForCountries( ...
    simRawResults, simProcResults);

% adjusting the name to the temporary name after we use temp model
simRawResults.M_.fname = 'shock_it_gi_temp';

%% calculating the contributions

% Calculate contributions for key Euro Area variables
targetVariables = ["IT_y", "IT_yst", "IT_ysn"];  % Output and 4-quarter inflation
contributionSeries = dynareFunc.calculateContributions( ...
    targetVariables, simRawResults.M_, simProcResults);

%% investigating interest rate reaction upon the request from Sandra
panelContributions(contributionSeries, project_path);

%%
function panelContributions(contributionSeries, projectPath)

    % Please specify the list of the variables to plot   
    VarListToPlot = string(reshape(fieldnames(contributionSeries.total), 1, []));
    
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
        bars_ = barcon( ...
            DateRange ...
            , contributionSeries.contrib.(aItem) ...
            , "ColorMap", cell2mat(contributionSeries.colorTable{contributionSeries.contrib.(aItem).Comment, :}) ...
            , 'EdgeColor', 'none' ...
        );

        % targets
        line_ = plot( ...
            DateRange ...
            , contributionSeries.total.(aItem) ...
            , 'color', cell2mat(contributionSeries.colorTable{aItem, :}) ...
            , 'linewidth', 2 ...
            , 'Marker', '_' ...
            , 'MarkerFaceColor', plottingFunc.rgb('black') ...
            , 'MarkerEdgeColor', plottingFunc.rgb('black') ...
            , 'MarkerSize', 4 ...
        );
        
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
    fileName = fullfile(projectPath, "docs/temp/fiscalContributions");
    exportgraphics(t, sprintf('%s.png',fileName),'BackgroundColor','none');
    exportgraphics(t, sprintf('%s.pdf',fileName),'BackgroundColor','none');
end