% Loading necessary path variables and environment variables
utils.call.paths;
envi = environment.setup;

% Change to relevant directory
cd(fullfile(project_path, 'eagleParsingTemp', 'modFiles'));

%% deterministic simulation of the monetary policy shock
dynare('shock_ea_epsr1.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro', 'json=compute');

%% analying the output of the simulation
monetarySimOutput = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'shock_ea_epsr1', 'Output', 'shock_ea_epsr1_results.mat'));
monetarySimStruct = dynareFunc.retrieveDeterSimul(monetarySimOutput);

%% calculate IRFs
%//TODO: once plotted make a project-wide function to use in other
%applications

% defining country pattern for filtering the variables
prefixPattern = strcat("^(", strjoin([envi.Meta.ctryList, "EA"], '|'), ")");

% bringing model variable list
modelVarLists = dynareFunc.retrieveModelVarList(monetarySimOutput.M_);

% creating a list of transformations to be conducted
transfList = reshape(unique(envi.varDict.diffTransf), 1, []);

% restarting the databank
monetarySimStruct.irfValues = struct();

% looping through transformations
for aTransf = transfList
    aVarSubList = {};
    % selecting a table with the relevant variables to be transformed
    tempVarTable = envi.varDict(strcmp(envi.varDict{:, "diffTransf"}, aTransf) ,:);
    for aVarIndex = 1:length(tempVarTable.Properties.RowNames)
        % looping through variables of the selected tables and selecting
        % any of them that shows up in the model for any country
        aVar = tempVarTable.Properties.RowNames{aVarIndex};
        aVarSubList = [aVarSubList; modelVarLists.endo( ~cellfun('isempty', regexp(modelVarLists.endo, prefixPattern + '_' + aVar + '$')))];
    end
    % performing the transformation
    transfFunc = str2func(['@(x,y) ' char(aTransf)]);
    tempDatabank = dbfun( ...
        transfFunc ...
        , monetarySimStruct.endoValues ...
        , monetarySimStruct.ssValues ...
        , 'NameList', aVarSubList ...
    );
    % since dbFunc keeps all series in the databank, even these not
    % transformed we have to purge the rest
    tempDatabank = databank.retrieve(tempDatabank, aVarSubList);
    % merging databanks with all types of transformations into one
    % structure
    monetarySimStruct.irfValues = dbmerge(monetarySimStruct.irfValues, tempDatabank);
end

% saving the irf values to a csv file for plotting
databank.toCSV( ...
    monetarySimStruct.irfValues ...
    , fullfile(project_path, "docs/2025-02_working-paper/figures/irfsMonPolShock.csv") ...
    , qq(1, 1): qq(10, 4) ...
    , "Comments", false ...
    , "Class", false ...
    , "Decimals", 3 ...    
);

%%

irfStruct = struct();
aEndoVar = "EA_y";
irfStruct.(aEndoVar) = (monetarySimStruct.endoValues.(aEndoVar)/monetarySimStruct.ssValues.(aEndoVar)-1)*100;
irfStruct.(aEndoVar) 

% global variable has to be declared so that it is passed on to
% createContributions function
global M_
M_ = monetarySimOutput.M_;

aItemList = ["EA_y"];
allItemList = aItemList;

for aItem = aItemList
    [ ...
        contributionSeries.total.(aItem) ...
        , contributionSeries.contrib.(aItem) ...
        , contributionSeries.lhs.(aItem) ...
        ] = createContributions( ...
            char(aItem) ...
            , convertFunc.Series2Dseries(monetarySimStruct.endoValues) ...
            , convertFunc.Series2Dseries(monetarySimStruct.ssValues) ...
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
function panelContributions(contributionSeries, projectPath, subProjectPath)

    % Please specify the list of the variables to plot   
    VarListToPlot = string(reshape(fieldnames(contributionSeries.total), 1, []));
    
    % Please specify the date range of the series
    DateRange = qq(1,1):qq(5,4);
    aShift = 0;
    DateRangeNorm = DateRange - aShift;
    DateRangeDateTime = dater.toMatlab(DateRangeNorm);
    
    % Plotting
    figure
    
    % Defining the shape of the figure
    tiledlayout_width = 1; %Specify the # of columns desired
    tiledlayout_height = 2;
    
    t = tiledlayout(tiledlayout_height, tiledlayout_width, 'TileSpacing', 'compact','Padding','compact');
    
    h = gcf;
    FigureHeight = min(29.7, tiledlayout_height*6.5);
    set(h, 'Units','centimeters', 'Position',[0 0 21-2*2.5 20-2*2.5])
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
        try
            bars_ = barcon( ...
                DateRange ...
                , contributionSeries.contrib.(aItem) ...
                , "ColorMap", cell2mat(contributionSeries.colorTable{contributionSeries.contrib.(aItem).Comment, :}) ...
                , 'EdgeColor', 'none');
        catch
        end  
        % targets
        try
            line_ = plot( ...
                DateRange ...
                , contributionSeries.total.(aItem) ...
                , 'color', cell2mat(contributionSeries.colorTable{aItem, :}) ...
                , 'linewidth', 2 ...
                , 'Marker', '_' ...
                , 'MarkerFaceColor', rgb('black') ...
                , 'MarkerEdgeColor', rgb('black') ...
                , 'MarkerSize', 4 ...
                );
        catch
        end
        
        hold off
    
        % Setting of the x and y axis
        xtickformat(gca,'yyQQQ')
    
        set(gca ...
            , 'Xtick', DateRangeDateTime(1:4:end) ...
            , 'Fontsize', 7 ...
            , 'Box', 'off' ...
            , 'TickLabelInterpreter','latex' ...
        );
    
        legendLabels = replace([contributionSeries.contrib.(aItem).Comment, aItem], "_", "\_");
        legend( ...
            [bars_, line_] ...
            , legendLabels ...
            , 'location', 'northoutside' ...
            , 'Interpreter','latex' ...
            , 'Fontsize', 6 ...
            , 'NumColumns', 2 ...
            );
    
    
    end 
        
    % Save graph
    fileName = fullfile(projectPath, "docs/2025-02_working-paper/figures/monetaryContributions");
    exportgraphics(t, sprintf('%s.png',fileName),'BackgroundColor','none');
end
