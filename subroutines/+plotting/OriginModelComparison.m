function figureHandle = OriginModelComparison(results, varConfig, outputFileName)

    % Load objects and adjust settings
    utils.call.paths;

    % Please specify the list of the variables to plot   
    VarListToPlot = ["Real_Output", "Tradable_Output", "Nontradable_Output", "Consumption", "Investment", "Trade_Balance", "Hours_Worked", "CPI_Inflation", "Real_Wage", "Terms_of_Trade", "Nominal_Interest_Rate", "Real_Interest_Rate"];
    modelList = fieldnames(results);  % Get the model names dynamically
    numModels = length(modelList);

    % Please specify the date range of the series
    dataRange = qq(0,1): qq(10, 1);

    % Define colors for each model
    colorList = {'r', 'g', 'm', 'b'};

    % Plotting
    figureHandle = figure('Position', [100, 100, 1500, 1000]);

    % Create main tiledlayout
    t = tiledlayout(4, 3, 'TileSpacing', 'compact', 'Padding', 'compact');
    
    h = figureHandle;
    set(h, 'DefaultTextInterpreter', 'latex');
    set(h, 'DefaultAxesTickLabelInterpreter', 'latex');
    set(h, 'DefaultLegendInterpreter', 'latex');

    legendEntries = cell(1, numModels);

    % Create subplots for each variable
    for i = 1:length(VarListToPlot)
        ax = nexttile;
        hold(ax, 'on');
        grid(ax, 'on');

        aVar = VarListToPlot(i);
        title(ax, replace(aVar, "_", "  "), 'Interpreter', 'latex', 'FontWeight', 'bold', 'FontSize', 10);        

        for j = 1:numModels
            modelNameAux = modelList{j};
            varName = varConfig.(modelNameAux).(aVar);

            % Plotting the data
            plotData = results.(modelNameAux).irfStruct.model.(varName){dataRange};
            plot(plotData, 'Color', colorList{j}, 'LineWidth', 2);
            legendEntries{j} = modelNameAux;
        end
        
        % Add legend to each subplot
        legend(ax, legendEntries, 'Location', 'best', 'FontSize', 6);
        
        % Setting of the x and y axis
        xtickformat(gca,'yQQQ');

        set(gca ...
                , 'Xtick', dater.toMatlab(dataRange(1:16:end)) ...
                , 'Fontsize', 8 ...
                , 'Box', 'off' ...
                , 'TickLabelInterpreter', 'latex' ...
                , 'XLimitMethod', 'tight' ...
        );
    end

     % Add a title to the entire figure
    title(t, '\bf Model Comparison', 'Interpreter', 'latex', 'FontSize', 14);

    % Save graph
    if nargin < 3 || isempty(outputFileName)
        outputFileName = 'ModelComparison';
    end
    
    fullFileName = fullfile(project_path, 'docs', [outputFileName '.png']);
    exportgraphics(t, fullFileName, 'BackgroundColor', 'none', 'Resolution', 300);
% Ensure the figure handle is returned
set(0, 'CurrentFigure', figureHandle);
end

