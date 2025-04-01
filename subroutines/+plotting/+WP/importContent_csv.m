function importContent(envi, csvFilePath)
    utils.call.paths;
    
    % Declaring items for plotting
    itemList = ["imiy", "imcy", "imigy", "imcgy"];
    labelList = ["Private investment", "Private consumption", "Gov. investment", "Gov. consumption"];


    % Create a figure and setup the tiled layout
    fig = figure;

    % Get the current figure handle and set dimensions
    h = gcf;
    set(h, 'Units', 'centimeters', 'Position', [0 0 16 6])
    set(h, 'defaulttextinterpreter','latex');

    % Country list, to be reversed given the chart construction
    ctryList = envi.Meta.ctryList(end:-1:1);

    % Read the CSV file
    rawData = readtable(csvFilePath);

    % Create a matrix for plots
    plotMatrix = zeros(numel(itemList), numel(ctryList));
    for i = 1:numel(itemList)
        for j = 1:numel(ctryList)
            colName = sprintf('%s_%s', ctryList{j}, itemList{i});
            if ismember(colName, rawData.Properties.VariableNames)
                plotMatrix(i, j) = rawData.(colName);
            else
                warning('Column not found: %s', colName);
            end
        end
    end

    % Create 3D bar chart
    aBars = bar3(1:length(ctryList), plotMatrix', 0.7);
    % Assigning the lables immediately
    for i = 1:length(aBars)
        aBars(i).DisplayName = labelList(i);
        set(aBars(i), 'EdgeColor', plottingFunc.rgb('DarkSlateGray'));
    end
        
    % Hide x-axis tick labels
    xticklabels({})

    % Set y-axis tick labels for countries
    yticks(1:length(ctryList))
    yticklabels(ctryList)
    
    % Adjust the view angle
    view(110, 30)

    % Add a grid
    grid on
    
    % Add a colormap similar to the one shown
    colormap(plottingFunc.linspecer(numel(itemList)));
    
    set(gca, 'TickLabelInterpreter', 'latex', "FontSize", 8);
    pbaspect(gca, 'auto')
    
    % Add a legend
    lg = legend('Location', 'Northoutside', 'Interpreter','latex', 'FontSize', 8);
    lg.NumColumns = 2;

    % Export the graphics to a file
    fileName = sprintf('%s/docs/2025-02_working-paper/figures/importContent', project_path);
    % exportgraphics(h, sprintf('%s.png', fileName), 'BackgroundColor', 'none', 'Resolution', 300, 'ContentType', 'image');
    print(fig, sprintf('%s.png', fileName), '-dpng', '-r300');
end