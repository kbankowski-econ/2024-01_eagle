function vertModelComparison(results, varConfig, outputFileName)

    % Load objects and adjust settings
    utils.call.paths;

    % Please specify the list of the variables to plot   
    VarListToPlot = ["EA_GDP", "EA_Inflation", "Germany_GDP", "Germany_Inflation"];
    modelList = fieldnames(results);  % Get the model names dynamically
    numModels = length(modelList);

    % Please specify the date range of the series
    dataRange = qq(1,1): qq(25,4);

    % Plotting
    figure

    % Create main tiledlayout
    t = tiledlayout(length(VarListToPlot), 1, 'TileSpacing', 'compact', 'Padding', 'compact');
    
    h = gcf;
    set(h, 'Units', 'centimeters', 'Position', [0 0 17 15])
    
    % Set default text interpreter to LaTeX for the entire figure
    set(h, 'DefaultTextInterpreter', 'latex');
    set(h, 'DefaultAxesTickLabelInterpreter', 'latex');
    set(h, 'DefaultLegendInterpreter', 'latex');

    % Create nested tiledlayouts for each row
    for i = 1:length(VarListToPlot)
        t1 = tiledlayout(t, 1, numModels, 'TileSpacing', 'compact');
        t1.Layout.Tile = i;

        aVar = VarListToPlot(i);
        title(t1, replace(aVar, "_", "\_"), 'Interpreter', 'latex', 'FontWeight', 'bold', 'FontSize', 10);        

        for j = 1:numModels % for each panel
            nexttile(t1);
            grid on
            hold on 

            modelNameAux=modelList{j};
    
            % Setting of the title
            title(modelNameAux, 'Interpreter', 'latex', 'Fontweight', 'normal', 'Fontsize', 8);

            varName=varConfig.(modelNameAux).(aVar);

            % Plotting the data
            plotData = results.(modelNameAux).irfStruct.model.(varName){dataRange};  % Accessing the specific variable for the current model
            plot(plotData, "LineWidth", 2);
            hold off;
    
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
    end

    % Save graph
    if nargin < 3 || isempty(outputFileName)
        % Default file name if not provided
        outputFileName = 'vertModelComparison';
    end
    
    fullFileName = fullfile(project_path, 'docs', [outputFileName '.png']);
    exportgraphics(t, fullFileName, 'BackgroundColor', 'none');
    
    fprintf('Graph saved as: %s\n', fullFileName);
end