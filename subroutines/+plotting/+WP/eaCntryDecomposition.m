function eaCntryDecomposition(contributionSeriesOriginal, modelName, options)

    arguments
        contributionSeriesOriginal
        modelName {mustBeTextScalar}
        options.redateNewDate (1, 1) Dater = qq(1, 1)
        options.plottingRange Dater = qq(1,1):qq(10,4)
    end

    % reading global variables
    utils.call.paths;
    envi = environment.setup;

    % reshaping contributions for EA so that thet the contribution multi
    % var series is in right order with country names only
    contributionSeries = reshapeContributionsForEA(contributionSeriesOriginal);

    % Variables to plot
    varList = string(reshape(fieldnames(contributionSeries.total), 1, []));
    
    % Date range
    dateRangeDateTime = dater.toMatlab(options.plottingRange);
    dateRangeFrequency = getFrequency(options.plottingRange(1));

    % Plotting
    figure
    
    % Figure layout
    t = tiledlayout(1, 2, 'TileSpacing', 'compact','Padding','normal');
    
    h = gcf;
    set(h, 'Units','centimeters', 'Position',[0 0 15 4])
    set(h,'defaulttextinterpreter','latex');
    
    for item = varList
        nexttile;
        grid on
        hold on 
    
        % Title
        title(envi.varDict{extractAfter(item, 3), "description"}, ...
            'Fontsize', 7, 'Fontweight', 'normal');
    
        % Plot contributions
        bars = bar(options.plottingRange, convert(redate(contributionSeries.contrib.(item), qq(1, 1), options.redateNewDate), dateRangeFrequency, Inf, "Method", "mean"), "Stacked", ...
            'EdgeColor', 'none');

        % adjusting colors
        for k = 1:numel(bars)
            bars(k).FaceColor = plottingFunc.hex2rgb(envi.Meta.colors.(contributionSeries.contrib.(item).comment(k)));
        end
        
        % Plot total
        line = plot(options.plottingRange, convert(redate(contributionSeries.total.(item), qq(1, 1), options.redateNewDate), dateRangeFrequency, Inf, "Method", "mean"), ...
            'color', plottingFunc.hex2rgb(envi.Meta.colors.("EA")), ...
            'linewidth', 2);
                
        hold off
    
        % Axis formatting - display quarters 1, 10, and 20 for quarterly
        % and each data reference for annnual
        if dateRangeFrequency == "YEARLY"
            tickPositions = dateRangeDateTime;
            dateLabels = compose("%02d", mod(year(dateRangeDateTime), 100));
        elseif dateRangeFrequency == "QUARTERLY"
            tickPositions = [dateRangeDateTime(1), dateRangeDateTime(10), dateRangeDateTime(20), dateRangeDateTime(30), dateRangeDateTime(40)];
            dateLabels = {'1', '10', '20', '30', '40'};
        else
            error('Unsupported frequency: %s. Only YEARLY and QUARTERLY frequencies are supported.', dateRangeFrequency);
        end

        set(gca, 'Xtick', tickPositions, 'XTickLabel', dateLabels, ...
            'Fontsize', 7, 'Box', 'off', 'TickLabelInterpreter','latex');
    
    end
    
    % Create shared legend for entire figure; just extract country label
    legendLabels = extractBetween([contributionSeries.contrib.(item).Comment, item], 1, 2);
    lgd = legend([bars, line], legendLabels, 'Interpreter','latex', ...
        'Fontsize', 6, 'NumColumns', 6, 'Orientation', 'horizontal', 'Box', 'off');
    lgd.Layout.Tile = 'north'; 
        
    % Save graph
    fileName = fullfile(project_path, "docs/2025-02_working-paper/figures/" + modelName + "_contributions");
    plotting.WP.exportVector(h, fileName, [15 4]);   % vector PDF + PNG at 15 x 4 cm
end


function newMultiVarTseries = reshapeContributionsForEA(contributionSeries)
    % Reshapes contribution series to match Euro Area country reporting order
    % 
    % Input:  contributionSeries - original contribution data structure
    % Output: newMultiVarTseries - reordered structure with countries in report order
    
    % Get environment setup and country list for report ordering
    envi = environment.setup;
    eaCtryListReport = envi.Meta.eaListForReport;
    
    % starting with the old object, which will be appended
    newMultiVarTseries = contributionSeries;

    % Extract all field names from contribution structure
    fieldNames = string(fieldnames(contributionSeries.contrib));
    
    % Process each field in the contribution structure
    for aField = fieldNames'
        % Extract country codes from original data comments (first 2 characters)
        eaCtryListDatabank = extractBefore(contributionSeries.contrib.(aField).Comment, 3);
        
        % Initialize empty series and build country-ordered data
        seriesData = Series.empty;
        
        % Reorder countries according to report list
        for aCtry = eaCtryListReport
            % Find the position of current country in original data
            countryIndex = (aCtry == eaCtryListDatabank);
            % Append country data in report order
            seriesData = [seriesData, contributionSeries.contrib.(aField){:, countryIndex}];

        end
        
        % Assign reordered data to output structure without the first NaN
        % column
        newMultiVarTseries.contrib.(aField) = [seriesData{:, 2: end}];
        % Update comments to reflect new country order
        newMultiVarTseries.contrib.(aField).comment = eaCtryListReport;
    end

end
