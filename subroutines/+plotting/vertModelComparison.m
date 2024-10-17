function vertModelComparison(aPlotDb)

    % Load objects and adjust settings
    utils.call.paths;

    % Please specify the list of the variables to plot   
    VarListToPlot = ["EA_y", "EA_y", "EA_pic4", "EA_pic4"];
    modelList = ["model", "model", "model"];

    % Please specify the date range of the series
    dataRange = qq(1,1): qq(25,4);

    % Plotting
    figure

    % Create main tiledlayout
    t = tiledlayout(4, 1, 'TileSpacing', 'compact', 'Padding', 'compact');
    
    h = gcf;
    set(h, 'Units', 'centimeters', 'Position', [0 0 17 15])
    
    % Set default text interpreter to LaTeX for the entire figure
    set(h, 'DefaultTextInterpreter', 'latex');
    set(h, 'DefaultAxesTickLabelInterpreter', 'latex');
    set(h, 'DefaultLegendInterpreter', 'latex');

    % Create nested tiledlayouts for each row
    for i = 1:4
        t1 = tiledlayout(t, 1, 3, 'TileSpacing', 'compact');
        t1.Layout.Tile = i;

        aVar = VarListToPlot(i);
        title(t1, replace(aVar, "_", "\_"), 'Interpreter', 'latex', 'FontWeight', 'bold', 'FontSize', 10);        

        for aModel = modelList % for each panel
            nexttile(t1);
            grid on
            hold on 
    
            % Setting of the title
            title(aModel, 'Interpreter', 'latex', 'Fontweight', 'normal', 'Fontsize', 8);
        
            % Plotting the data
            pp = struct();
            pp.(aVar).(aModel) = plot( ...
                aPlotDb.(aModel).(aVar){dataRange} ...
                , "LineWidth", 2 ...
            );
            hold off
    
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
    fileName = sprintf('%s/docs/vertModelComparison', project_path);
    exportgraphics(t, sprintf('%s.png', fileName), 'BackgroundColor', 'none');
end