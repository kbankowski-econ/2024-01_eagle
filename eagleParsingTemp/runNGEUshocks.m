utils.call.paths;

ngeuCtryListModNames = ["EAB", "EAC", "EAD", "EAE", "EAG", "EAH", "EAI", "EAJ", "EAK", "EAL", "EAM"];
ngeuCtryListStdNames = ["AT", "BE", "FI", "FR", "NL", "ES", "GR", "IE", "IT", "PT", "DE"];

% cding to a proper folder
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

%%
ngeuInput = load("/Users/kk/Documents/0000-00_work/2021-05_ECB-MC/ecb-mc/databases/FiscalBMENote/shockInput_NGEU_24repFQ_AEJun24.mat");

for aCtry = ngeuCtryListStdNames
    ngeuEagleInput.(ngeuCtryListModNames(aCtry == ngeuCtryListStdNames)) = ngeuInput.shockInput.Qrat.(aCtry).GovInv;
end


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
irfStruct.(aEndoVar) 

aItemList = ["EA_y", "EA_pic4"];

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
panelContributions(contributionSeries, project_path);

%% stochastic simulation
dynare('eagleModelFiscalShocksStoch.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));

%%
function panelContributions(contributionSeries, projectPath)

    % ctry lists
    ctryListModNames = ["EAA", "EAB", "EAC", "EAD", "EAE", "EAF", "EAG", "EAH", "EAI", "EAJ", "EAK", "EAL", "EAM"];
    ctryListStdNames = ["EA rest", "AT", "BE", "FI", "FR", "LU", "NL", "ES", "GR", "IE", "IT", "PT", "DE"]; 
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
        aTitle = sprintf('Decomposition of %s', contributionSeries.lhs.(aItem));        
        title( ...
            aTitle ...
            , 'Fontsize', 7 ...
            , 'Fontweight', 'normal' ...
        );
    
        % actual data
            bars_ = barcon( ...
                contributionSeries.contrib.(aItem){DateRange} ...
                , "ColorMap", cell2mat(contributionSeries.colorTable{contributionSeries.contrib.(aItem).Comment, :}) ...
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

    legendLabels = [ctryListStdNames, "EA total"];
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
    fileName = fullfile(projectPath, "docs/2024-12_RCC-workshop/figures/effectNGEU");
    exportgraphics(t, sprintf('%s.png',fileName),'BackgroundColor','none');
end