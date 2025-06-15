utils.call.paths;
ngeuCtryListStdNames = ["AT", "BE", "FI", "FR", "NL", "ES", "GR", "IT", "PT", "DE"];

% cding to a proper folder
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

%%
ngeuInput = load(fullfile(project_path, "shockInput_NGEU_24repFQ_AEJun24.mat"));
gdpInput = load(fullfile(project_path, "ltGDP_GovCo2024.mat"));

for aCtry = ngeuCtryListStdNames
    ngeuEagleInput.(aCtry) = ngeuInput.shockInput.Qrat.(aCtry).GovInv;
end

for aCtryName = databank.fieldNames(ngeuInput.shockInput.A)
    ngeuChartInput.(aCtryName) = ngeuInput.shockInput.A.(aCtryName).GovInv/gdpInput.ltGDP.A.U2*100;
end

databank.toCSV(ngeuChartInput, fullfile(project_path, "databases/inputNGEUchart.csv"), "Decimal", 3, "Comments", false, "Class", false);
databank.toCSV(ngeuEagleInput, fullfile(project_path, "databases/inputNGEUshock.csv"), "Decimal", 5, "Comments", false, "Class", false);

%% deterministic simulation
dynare('shock_ngeu.mod',  sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');

%% analying the output of the simulation
ngeuSimOutput = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'shock_ngeu', 'Output', 'shock_ngeu_results.mat'));
M_ = ngeuSimOutput.M_;

dataRange = qq(0, 4): qq(0, 4)+size(ngeuSimOutput.oo_.endo_simul', 1) - 1;
endoStruct = struct(); ssStruct = struct(); irfStruct = struct();

endoStruct = databank.fromArray( ...
    ngeuSimOutput.oo_.endo_simul' ...
    , ngeuSimOutput.M_.endo_names ...
    , dataRange(1) ...
);
ssStruct = databank.fromArray( ...
    repmat(ngeuSimOutput.oo_.steady_state', numel(dataRange), 1) ...
    , ngeuSimOutput.M_.endo_names ...
    , dataRange(1) ...
);
for aParam = string(reshape(ngeuSimOutput.M_.param_names, 1, []))
    paramStruct.(aParam) = ngeuSimOutput.M_.params(strcmp(aParam, ngeuSimOutput.M_.param_names));
end

%{
[endoStruct.EAE_y, ssStruct.EAE_y]
[endoStruct.EAE_yst, ssStruct.EAE_yst]
[endoStruct.EAE_ysn, ssStruct.EAE_ysn]
[endoStruct.EAA_ysn, ssStruct.EAA_ysn]
[endoStruct.EAE_pic4, ssStruct.EAE_pic4]
[endoStruct.EAE_cgy, ssStruct.EAE_cgy]
[endoStruct.EAB_cgy, ssStruct.EAB_cgy]
[endoStruct.EAB_y, ssStruct.EAB_y]
%}

aEndoVar = "EA_y";
irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)/ssStruct.(aEndoVar)-1)*100;
aEndoVar = "ES_y";
irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)/ssStruct.(aEndoVar)-1)*100;
aEndoVar = "DE_y";
irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)/ssStruct.(aEndoVar)-1)*100;
aEndoVar = "DE_ex";
irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)/ssStruct.(aEndoVar)-1)*100;
aEndoVar = "DE_r";
irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)-ssStruct.(aEndoVar))*100;
aEndoVar = "EA_pic4";
irfStruct.(aEndoVar) = (endoStruct.(aEndoVar)-ssStruct.(aEndoVar))*100;


aItemList = ["EA_y", "EA_pic4"];

customTitles = containers.Map( ...
    {'EA_y', 'EA_pic4'}, ...
    {'Real GDP in EA', 'Inflation in EA'} ...
);

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

%% investigating interest rate reaction upon the request from Sandra
panelContributions(contributionSeries, project_path, customTitles);

%% chart with spill-overs
panelSpillOvers(irfStruct, project_path)

%% chart with spill-overs
panelTotal(irfStruct, project_path)

%% stochastic simulation
dynare('eagleModelFiscalShocksStoch.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));

%%
function panelContributions(contributionSeries, projectPath, customTitles)

    % ctry lists
    % ctryListModNames = ["RA", "AT", "BE", "FI", "FR", "NL", "ES", "GR", "IT", "PT", "DE"];
    % ctryListStdNames = ["AT", "BE", "DE", "ES", "FI", "FR", "GR", "IT", "NL", "PT", "EA rest"]; 
    contributionSeries.contrib = databank.redate(contributionSeries.contrib, qq(1, 1), qq(2021, 1));
    contributionSeries.total = databank.redate(contributionSeries.total, qq(1, 1), qq(2021, 1));

    % Please specify the list of the variables to plot   
    VarListToPlot = string(reshape(fieldnames(contributionSeries.total), 1, []));
    
    % Please specify the date range of the series
    DateRange = qq(2021,1):qq(2039,4);
    aShift = 0;
    DateRangeNorm = DateRange - aShift;
    DateRangeDateTime = dater.toMatlab(DateRangeNorm);
    
    % Plotting
    figure
    
    % Defining the shape of the figure
    tiledlayout_width = 2; %Specify the # of columns desired
    tiledlayout_height = 1;
    
    t = tiledlayout(tiledlayout_height, tiledlayout_width, 'TileSpacing', 'compact','Padding','compact');
    
    h = gcf;
    set(h, 'Units','centimeters', 'Position',[0 0 14 5.5])
    set(h,'defaulttextinterpreter','latex');
    
    for aItem = VarListToPlot %for each panel
        nexttile;
        grid on
        hold on 
    
        % Seeting of the title
        if exist('customTitles', 'var') && isKey(customTitles, char(aItem))
            aTitle = sprintf('Decomposition of %s', customTitles(char(aItem)));
        else
            aTitle = sprintf('Decomposition of %s', contributionSeries.lhs.(aItem));
        end

        % Get the order of contributors
        contribNames = contributionSeries.contrib.(aItem).Comment;
        
        % Extract color map in that same order
        colorMapOrdered = cell2mat(contributionSeries.colorTable{contribNames, :});
        
        % Plot
        bars_ = barcon( ...
            contributionSeries.contrib.(aItem){DateRange} ...
            , "ColorMap", colorMapOrdered ...
            , 'EdgeColor', 'none');
        % targets
            line_ = plot( ...
                contributionSeries.total.(aItem){DateRange} ...
                , 'color', cell2mat(contributionSeries.colorTable{aItem, :}) ...
                , 'linewidth', 2 ...
                , 'Marker', '_' ...
                , 'MarkerFaceColor', rgb('black') ...
                , 'MarkerEdgeColor', rgb('black') ...
                , 'MarkerSize', 4 ...
                );
        % Setting of the title
        if exist('customTitles', 'var') && isKey(customTitles, char(aItem))
            aTitle = sprintf('Decomposition of %s', customTitles(char(aItem)));
        else
            aTitle = sprintf('Decomposition of %s', contributionSeries.lhs.(aItem));
        end
        
        title( ...
            aTitle ...
            , 'Fontsize', 7 ...
            , 'Fontweight', 'normal' ...
            , 'Interpreter', 'latex' ...
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
    
    end 

    % Remove suffix (e.g., "_pic4") and keep only country codes
    legendLabels = regexprep(contribNames, '_.*$', '');
    
    % Escape underscores in case some remain (just in case)
    legendLabels = replace(legendLabels, '_', '\\_');
    
    % Add "EA total"
    legendLabels = [legendLabels, "EA total"];
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
    fileName = fullfile(projectPath, "docs/2025-02_working-paper/figures/effectNGEU");
    exportgraphics(t, sprintf('%s.png',fileName),'BackgroundColor','none');
end

function panelSpillOvers(irfStruct, projectPath)

    % Redating
    irfStruct = databank.redate(irfStruct, qq(1, 1), qq(2021, 1));
    
    % Please specify the list of the variables to plot   
    VarListToPlot = ["ES_y", "DE_y", "DE_ex", "DE_r"];
    TitleList = ["Spanish GDP", "German GDP", "German exports", "EA nominal rate"];
    
    % Please specify the date range of the series
    DateRange = qq(2021,1):qq(2039,4);
    aShift = 0;
    DateRangeNorm = DateRange - aShift;
    DateRangeDateTime = dater.toMatlab(DateRangeNorm);
    
    % Plotting
    figure
    
    % Defining the shape of the figure
    tiledlayout_width = 4; %Specify the # of columns desired
    tiledlayout_height = 1;
    
    t = tiledlayout(tiledlayout_height, tiledlayout_width, 'TileSpacing', 'compact','Padding','compact');
    
    h = gcf;
    set(h, 'Units','centimeters', 'Position',[0 0 14 5.5])
    set(h,'defaulttextinterpreter','latex');
    
    for aItem = VarListToPlot %for each panel
        nexttile;
        grid on
        hold on 
    
        % Seeting of the title
        aTitle = TitleList(aItem == VarListToPlot);        
        title( ...
            aTitle ...
            , 'Fontsize', 7 ...
            , 'Fontweight', 'normal' ...
        );
    
        % targets
            line_ = plot( ...
                irfStruct.(aItem){DateRange} ...
                , 'linewidth', 2 ...
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
    
    end 

    % Save graph
    fileName = fullfile(projectPath, "docs/2025-02_working-paper/figures/effectNGEUspillovers");
    exportgraphics(t, sprintf('%s.png',fileName),'BackgroundColor','none');
end

function panelTotal(irfStruct, projectPath)

    % Redating
    irfStruct = databank.redate(irfStruct, qq(1, 1), qq(2021, 1));
    
    % Please specify the list of the variables to plot   
    VarListToPlot = ["EA_y", "EA_pic4"];
    TitleList = ["EA GDP", "EA Inflation"];
    
    % Please specify the date range of the series
    DateRange = qq(2021,1):qq(2031,4);
    aShift = 0;
    DateRangeNorm = DateRange - aShift;
    DateRangeDateTime = dater.toMatlab(DateRangeNorm);
    
    % Plotting
    figure
    
    % Defining the shape of the figure
    tiledlayout_width = 2; %Specify the # of columns desired
    tiledlayout_height = 1;
    
    t = tiledlayout(tiledlayout_height, tiledlayout_width, 'TileSpacing', 'compact','Padding','compact');
    
    h = gcf;
    set(h, 'Units','centimeters', 'Position',[0 0 14 5.5])
    set(h,'defaulttextinterpreter','latex');
    
    for aItem = VarListToPlot %for each panel
        nexttile;
        grid on
        hold on 
    
        % Seeting of the title
        aTitle = TitleList(aItem == VarListToPlot);        
        title( ...
            aTitle ...
            , 'Fontsize', 7 ...
            , 'Fontweight', 'normal' ...
        );
    
        % targets
            line_ = plot( ...
                irfStruct.(aItem){DateRange} ...
                , 'linewidth', 2 ...
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
    
    end 

    % Save graph
    fileName = fullfile(projectPath, "docs/2025-06-WGPF-workshop/figures/effectNGEUtotal");
    exportgraphics(t, sprintf('%s.png',fileName),'BackgroundColor','none');
end