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