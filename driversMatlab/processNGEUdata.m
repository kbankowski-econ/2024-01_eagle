utils.call.paths;
ctryList = envi.Meta.eaListForReport;

% cding to a proper folder
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

%% setting up a bridge table
dataKeys = ["TaxDirectHH", "GovTransf", "TaxDirectFirm", "GovInv", "OtherSpend", "OtherRev"];
modelKeys = ["x", "xx", "xxx", "epsgi", "xxxx", "xxxxx"];
bridgeMap = containers.Map(dataKeys, modelKeys);

%% Read in data from Matlab and save in csv files for further processing
ngeuInput = load(fullfile(project_path_ecbMC, "databases/FiscalBMENote", "shockInput_NGEU_24repFQ_AEJun24.mat"));
gdpInput.ltGDP.A = databank.fromCSV(fullfile(project_path_ecbMC, 'databases/FiscalBMENote', 'weo_data.csv'));

ngeuEagleInput = struct();

for aCtry = envi.Meta.eaListForReport
    ngeuEagleInput.(aCtry + "_" + bridgeMap("GovInv")) = ngeuInput.shockInput.Arat.(aCtry).GovInv;
end

for aCtryName = databank.fieldNames(ngeuInput.shockInput.A)
    ngeuChartInput.(aCtryName) = ngeuInput.shockInput.A.(aCtryName).GovInv/gdpInput.ltGDP.A.U2*100;
end

databank.toCSV(ngeuChartInput, fullfile(project_path, "databases/inputNGEUchart.csv"), "Decimal", 5, "Comments", false, "Class", false);
databank.toCSV(ngeuEagleInput, fullfile(project_path, "databases/inputNGEUshock.csv"), "Decimal", 5, "Comments", false, "Class", false);

%% generating a mod file macro to be included in teh NGEU model with all the shock values
generateNGEUModFile();

%% plotting NGEU input
plotNGEUinput();

%% local functions
function generateNGEUModFile()

    % Reading in some global variables
    utils.call.paths;

    % Read CSV data
    ngeuShockDatabankAnn = databank.fromCSV(fullfile(project_path, "databases/inputNGEUshock.csv"));

    % Interpolate databank to quarterly frequency for the model
    ngeuShockDatabankQrt = databank.apply(ngeuShockDatabankAnn, @(x) convert(x, "QUARTERLY", "Method", "flat"));

    % Get variable names (excluding the date column)
    varNames = databank.fieldNames(ngeuShockDatabankQrt);
    
    % Number of periods (32 quarters from 2021Q1 to 2028Q4)
    dataRange = databank.range(ngeuShockDatabankQrt);
    numPeriods = length(dataRange);
    
    % Open file for writing
    outputFile = fullfile(project_path, "eagleParsingTemp/submodules/ngeu_shock_values.mod");
    fid = fopen(outputFile, 'w');
    
    if fid == -1
        error('Could not open file for writing: %s', outputFile);
    end
    

    % Process each variable
    for aVarName = varNames
        
        % Write variable declaration
        fprintf(fid, 'var %s;\n', aVarName);
        
        % Write periods line
        fprintf(fid, 'periods');
        for periodInteger = 1:numPeriods
            fprintf(fid, ' %d', periodInteger);
        end
        fprintf(fid, ';\n');
        
        % Write values line
        fprintf(fid, 'values');
        for periodDateRange = dataRange
            value = ngeuShockDatabankQrt.(aVarName)(periodDateRange);
            % Convert percentage to decimal and format with 5 decimal places
            fprintf(fid, ' %.5f', value/100);
        end
        fprintf(fid, ';\n');
    end
    
    fprintf('NGEU mod file generated successfully: %s\n', outputFile);
        
    
    fclose(fid);
end

function plotNGEUinput()

    % reading global variables
    utils.call.paths;
    envi = environment.setup;
    ctryList = envi.Meta.eaListForReport;

    % Read CSV data
    ngeuInputValuesRaw = databank.fromCSV(fullfile(project_path, "databases/inputNGEUchart.csv"));

    % Retrieve countries consistent with the model
    ngeuInputValues = databank.copy(ngeuInputValuesRaw, "SourceNames", ctryList);

    % Date range
    dateRangeDateTime = dater.toMatlab(databank.range(ngeuInputValues));

    % Plotting
    figure
    
    % Figure layout
    t = tiledlayout(1, 1, 'TileSpacing', 'compact','Padding','normal');
    
    h = gcf;
    set(h, 'Units','centimeters', 'Position',[0 0 16 4])
    set(h,'defaulttextinterpreter','latex');
    
    nexttile;
    grid on
    hold on 

    % Plot contributions
    bars = bar(dateRangeDateTime, databank.toSeries(ngeuInputValues), "Stacked", ...
        'EdgeColor', 'none');

    % adjusting colors
    for k = 1:numel(bars)
        bars(k).FaceColor = plottingFunc.hex2rgb(envi.Meta.colors.(ctryList(k)));
    end
    
    % Plot total
    % line = plot(options.plottingRange, convert(redate(contributionSeries.total.(item), qq(1, 1), options.redateNewDate), dateRangeFrequency, Inf, "Method", "mean"), ...
    %     'color', plottingFunc.hex2rgb(envi.Meta.colors.("EA")), ...
    %     'linewidth', 2);
            
    hold off

    % Axis formatting - display quarters 1, 10, and 20 for quarterly
    % and each data reference for annnual
    tickPositions = dateRangeDateTime;
    dateLabels = compose("%02d", mod(year(dateRangeDateTime), 100));
    set(gca, 'Xtick', tickPositions, 'XTickLabel', dateLabels, ...
        'Fontsize', 7, 'Box', 'off', 'TickLabelInterpreter','latex');
    
    % Create shared legend for entire figure
    lgd = legend(bars, ctryList, 'Interpreter','latex', ...
        'Fontsize', 6, 'NumColumns', 6, 'Orientation', 'horizontal');
    lgd.Layout.Tile = 'north'; 
        
    % Save graph
    fileName = fullfile(project_path, "docs/2025-02_working-paper/figures/NGEU_input");
    exportgraphics(t, sprintf('%s.png', fileName), 'BackgroundColor', 'none');
    exportgraphics(t, sprintf('%s.pdf', fileName), 'BackgroundColor', 'none');
end