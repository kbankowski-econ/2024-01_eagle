utils.call.paths;
ngeuCtryListStdNames = ["AT", "BE", "FI", "FR", "NL", "ES", "GR", "IT", "PT", "DE"];

% cding to a proper folder
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

%% setting up a bridge table
dataKeys = ["TaxDirectHH", "GovTransf", "TaxDirectFirm", "GovInv", "OtherSpend", "OtherRev"];
modelKeys = ["x", "xx", "xxx", "epsgi", "xxxx", "xxxxx"];
bridgeMap = containers.Map(dataKeys, modelKeys);

%% Read in data from Matlab and save in csv files for further processing
ngeuInput = load(fullfile(project_path, "shockInput_NGEU_24repFQ_AEJun24.mat"));
gdpInput = load(fullfile(project_path, "ltGDP_GovCo2024.mat"));

ngeuEagleInput = struct();

for aCtry = ngeuCtryListStdNames
    ngeuEagleInput.(aCtry + "_" + bridgeMap("GovInv")) = ngeuInput.shockInput.Qrat.(aCtry).GovInv;
end

for aCtryName = databank.fieldNames(ngeuInput.shockInput.A)
    ngeuChartInput.(aCtryName) = ngeuInput.shockInput.A.(aCtryName).GovInv/gdpInput.ltGDP.A.U2*100;
end

databank.toCSV(ngeuChartInput, fullfile(project_path, "databases/inputNGEUchart.csv"), "Decimal", 3, "Comments", false, "Class", false);
databank.toCSV(ngeuEagleInput, fullfile(project_path, "databases/inputNGEUshock.csv"), "Decimal", 5, "Comments", false, "Class", false);

%% generating a mod file macro to be included in teh NGEU model with all the shock values
generateNGEUModFile();

%% local functions
function generateNGEUModFile()

    % Reading in some global variables
    utils.call.paths;

    % Read CSV data
    csvData = readtable(fullfile(project_path, "databases/inputNGEUshock.csv"));
    
    % Get variable names (excluding the date column)
    varNames = csvData.Properties.VariableNames(2:end);
    
    % Number of periods (32 quarters from 2021Q1 to 2028Q4)
    numPeriods = height(csvData);
    
    % Open file for writing
    outputFile = fullfile(project_path, "eagleParsingTemp/modFiles/ngeu_shock_values.mod");
    fid = fopen(outputFile, 'w');
    
    if fid == -1
        error('Could not open file for writing: %s', outputFile);
    end
    

    % Process each variable
    for i = 1:length(varNames)
        varName = varNames{i};
        
        % Write variable declaration
        fprintf(fid, 'var %s;\n', varName);
        
        % Write periods line
        fprintf(fid, 'periods');
        for period = 1:numPeriods
            fprintf(fid, ' %d', period);
        end
        fprintf(fid, ';\n');
        
        % Write values line
        fprintf(fid, 'values');
        for period = 1:numPeriods
            value = csvData.(varName)(period);
            % Convert percentage to decimal and format with 5 decimal places
            fprintf(fid, ' %.5f', value/100);
        end
        fprintf(fid, ';\n');
    end
    
    fprintf('NGEU mod file generated successfully: %s\n', outputFile);
        
    
    fclose(fid);
end
