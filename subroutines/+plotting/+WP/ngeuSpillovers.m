function ngeuSpillovers(irfValues, modelName)
%NGEUSPILLOVERS Four-panel chart of NGEU spillovers (figure effectNGEUspillovers).
%   ngeuSpillovers(irfValues, modelName) plots Spanish GDP, German GDP,
%   German exports and the euro area nominal rate from the IRF databank of
%   the NGEU shock and writes figures/<modelName>_spillovers.{pdf,png} at
%   15 x 5 cm (vector PDF). Ported from panelSpillOvers in
%   eagleParsingTemp/runNGEUshocks.m, which produced effectNGEUspillovers.png.
    utils.call.paths;
    varList = ["ES_y", "DE_y", "DE_ex", "DE_r"];
    titleList = ["Spanish GDP", "German GDP", "German exports", "EA nominal rate"];
    startDate = qq(2021, 1);
    plotRange = startDate:qq(2030, 4);
    irfValues = databank.redate(irfValues, qq(1, 1), startDate);
    dateTicks = dater.toMatlab(plotRange(1:8:end));

    h = figure('Visible', 'off');
    t = tiledlayout(1, 4, 'TileSpacing', 'compact', 'Padding', 'compact'); %#ok<NASGU>
    set(h, 'Units', 'centimeters', 'Position', [0 0 15 5]);
    set(h, 'defaulttextinterpreter', 'latex');
    for k = 1:numel(varList)
        nexttile;
        grid on; hold on
        title(titleList(k), 'Fontsize', 7, 'Fontweight', 'normal');
        plot(irfValues.(varList(k)){plotRange}, 'linewidth', 1.5);
        hold off
        xtickformat(gca, 'yy');
        set(gca, 'Xtick', dateTicks, 'Fontsize', 7, 'Box', 'off', ...
            'TickLabelInterpreter', 'latex');
    end
    fileName = fullfile(project_path, "docs/2025-02_working-paper/figures/" + modelName + "_spillovers");
    plotting.WP.exportVector(h, fileName, [15 5]);
    close(h);
end
