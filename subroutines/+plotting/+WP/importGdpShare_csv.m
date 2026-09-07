function importContent(envi, csvFilePath)
    utils.call.paths;
    % Read the CSV file
    rawData = readtable(csvFilePath, 'VariableNamingRule', 'preserve');

    % Define countries to move to the end
    countriesToEnd = {'United States', 'Japan'};

    % Extract relevant data
    countryNames = rawData.("Reporter Name");
    eaImports = rawData.("Euro Area Imports (% of importer GDP)");
    nonEaImports = rawData.("EU Non-Euro Area Imports (% of importer GDP)");
    rwImports = rawData.("Rest of World Import (% of importer GDP)");

    % Find indices of countries to move
    [~, idxToEnd] = ismember(countriesToEnd, countryNames);
    idxToEnd = idxToEnd(idxToEnd ~= 0); % Remove zero indices

    % Separate data for reordering
    dataToEnd = [eaImports(idxToEnd), nonEaImports(idxToEnd), rwImports(idxToEnd)];
    namesToEnd = countryNames(idxToEnd);

    % Remove moved countries from original data
    eaImports(idxToEnd) = [];
    nonEaImports(idxToEnd) = [];
    rwImports(idxToEnd) = [];
    countryNames(idxToEnd) = [];

    % Concatenate data
    countryNames = [countryNames; namesToEnd];
    eaImports = [eaImports; dataToEnd(:, 1)];
    nonEaImports = [nonEaImports; dataToEnd(:, 2)];
    rwImports = [rwImports; dataToEnd(:, 3)];

    % Combine data into a matrix for stacked bar chart
    importMatrix = [eaImports, nonEaImports, rwImports];

    % Create figure
    fig = figure;

    % Set figure dimensions and properties
    set(fig, 'Units', 'centimeters', 'Position', [0 0 15 6]);
    set(fig, 'defaulttextinterpreter', 'latex');

    % Create stacked bar chart
    barHandle = bar(importMatrix, 'stacked');
    
    % Assign colors to bars (similar to the image)
    barHandle(1).FaceColor = [0.2, 0.4, 0.8]; % Blue for EA Imports
    barHandle(2).FaceColor = [0.9, 0.7, 0.1]; % Yellow for Non-EA EU Imports
    barHandle(3).FaceColor = [0.8, 0.3, 0.3]; % Red for Rest of World Imports

    % Set x-axis labels (country names)
    xticks(1:length(countryNames));
    xticklabels(countryNames);
    xtickangle(45);

    % Add grid lines
    grid on;

    % Add legend
    legend({'Imports from Euro Area', 'Imports from Non-Euro Area EU', 'Imports from Rest of World'}, ...
        'Location', 'Northoutside', 'Interpreter', 'latex', 'FontSize', 8);

    % Set axis labels and title
    ylabel('Imports (% of importer''s GDP)', 'Interpreter', 'latex');

    % Adjust font size and tick label interpreter
    set(gca, 'TickLabelInterpreter', 'latex', 'FontSize', 8);

    % Set y-axis limit
    ylim([0, 100]);

    % Add gray shading
    numCountries = length(countryNames);
    numShaded = length(countriesToEnd);
    xStart = numCountries - numShaded + 0.5;
    xEnd = numCountries + 0.5;
    yLimits = ylim;  % Get current y-axis limits
    yHeight = yLimits(2) - yLimits(1);  % Calculate height of the y-axis

    rectangle('Position', [xStart, yLimits(1), xEnd - xStart, yHeight], ...
        'FaceColor', [0.8, 0.8, 0.8], 'EdgeColor', 'none');

    % Ensure the bars are in front of the rectangle
    uistack(barHandle, 'top');

    % Export the graphics to a file
    fileName = sprintf('%s/docs/2025-02_working-paper/figures/importMagnitude', project_path);
    plotting.WP.exportVector(fig, fileName, [15 6]);   % vector PDF + PNG at 15 x 6 cm
end