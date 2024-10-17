function vertModelComparison(aPlotDb)
    % Load objects and adjust settings
    utils.call.paths;
    % Please include the needed environments components
    % Reading in the json file with the names from the BASE project for the
    % chart titles
    VarTable = jsonToTable(sprintf('%s/+environment/+WPfiscal/jsonFiles/VarTable.json', project_path_BASE));

    % some ad-hoc adjustments for the IMF presentation
    VarTable{"U2_YER", "Title"} = {'Output (\% level deviation)'};
    VarTable{"U2_A4_HH_COD", "Title"} = {'Inflation (p.p. y-o-y growth rate deviation)'};

    fiscalShockTable = jsonToTable(sprintf('%s/+environment/+WPfiscal/jsonFiles/fiscalShockTable.json', project_path_BASE));

    % some ad-hoc adjustments for the IMF presentation
    fiscalShockTable{"SSCHH", "ShockTitle"} = {'HH Social Contrib.'};
    fiscalShockTable{"SSCFirm", "ShockTitle"} = {'Firm Social Contrib.'};
    
    % Please specify the list of the variables to plot   
    VarListToPlot = string(reshape([
        "U2_YER";
        "U2_A4_HH_COD"
    ], 1, []));

    % just recalling the function to define standard ECB colours
    ECB_ColorMap = ECB_Color;

    % two subpanels
    shockGroupList = ["allRevenue", "allSpending"];

    % ad-hoc definition of revenue shocks
    envi.Meta.Lists.Shocks.Plotting.irf_shocks.group_primary.(shockGroupList(1)) = {
        'TaxDirectHH'
        'TaxDirectFirm'
        'SSCHH'
        'SSCFirm'
        'TaxConsum'
    };

    % ad-hoc definition of spending shocks
    envi.Meta.Lists.Shocks.Plotting.irf_shocks.group_primary.(shockGroupList(2)) = {
        'GovCompensEmpl'
        'GovCompensWage'
        'GovTransf'
        'GovSubs'
        'GovPurch'
        'GovInv'
    };

    % Please specify the date range of the series
    DateRangeBASE = qq(2822,2):qq(2826,1);
    dateDiff = DateRangeBASE(1) - qq(1, 1);
    dateRangeNormalised = DateRangeBASE - dateDiff;

    % Plotting
    figure

    % Create main tiledlayout with 2 rows and 1 column
    t = tiledlayout(1, 2, 'TileSpacing', 'compact', 'Padding', 'compact');
    
    h = gcf;
    set(h, 'Units', 'centimeters', 'Position', [0 0 17 10])
    
    % Set default text interpreter to LaTeX for the entire figure
    set(h, 'DefaultTextInterpreter', 'latex');
    set(h, 'DefaultAxesTickLabelInterpreter', 'latex');
    set(h, 'DefaultLegendInterpreter', 'latex');

    % Create nested tiledlayouts for each row
    for i = 1:2
        t1 = tiledlayout(t, 2, 1, 'TileSpacing', 'compact');
        t1.Layout.Tile = i;

        shockList = reshape(string([
            fiscalShockTable(envi.Meta.Lists.Shocks.Plotting.irf_shocks.group_primary.(shockGroupList(i)), :).Properties.RowNames
        ]), 1, []);

        cmap = ECB_ColorMap(1:length(shockList));
    
        for aVar = VarListToPlot % for each panel
            nexttile(t1);
            grid on
            hold on 
    
            % Setting of the title
            aTitle = VarTable{aVar, "Title"};        
            title(aTitle, 'Interpreter', 'latex', 'Fontweight', 'normal', 'Fontsize', 8);
        
            % Plotting the data
            % one has to reset the plot before going to it just becase we
            % build a legend based on this
            pp = struct();
            for aShock = shockList
                pp.(aShock) = plot(redate(aPlotDb.(aShock).irf_dev.(aVar){DateRangeBASE}, DateRangeBASE(1), dateRangeNormalised(1)), ...
                                   'Color', cmap(aShock==shockList), ...
                                   'Linewidth', 1.5);
            end
            
            hold off
    
            % Setting of the x and y axis
            xtickformat(gca,'yQQQ');

            set(gca ...
                , 'Xtick', dater.toMatlab(dateRangeNormalised(1:2:end)) ...
                , 'Fontsize', 8 ...
                , 'Box', 'off' ...
                , 'TickLabelInterpreter', 'latex' ...
                , 'XLimitMethod', 'tight' ...
            );

        end 

        % Setting of the legend   
        leg = legend( ...
            struct2array(pp), ...
            reshape(fiscalShockTable{shockList, "ShockTitle"}, 1, []), ...
            'Orientation', 'horizontal', ...
            'Color', [1 1 1], ...
            'Fontsize', 7, ...
            'Interpreter', 'latex');
        
        leg.Layout.Tile = 'north';
        leg.NumColumns = 1; % To uncomment and set the proper # of columns (if needed)
        leg.Box = 'off'; % This removes the border from the legend    
    end

    % Save graph
    fileName = sprintf('%s/docu/2024-09_paper-draft_BdI/figures/IRFsBASEshocks', project_path);
    savePlotDataAsCSV(t, fileName, frequency.QUARTERLY);
    exportgraphics(t, sprintf('%s.png', fileName), 'BackgroundColor', 'none');
end