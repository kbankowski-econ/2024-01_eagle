% Define country array
countries = [ "RA", "AT", "BE", "ES", "FI", "FR", "GR", "IT", "NL", "PT", "DE", "RU", "RW", "US"];
importItemListModNames = ["imcy", "imcgy", "imiy", "imigy"];

% Create circular array for residual countries
shiftAmount = 12;  % Making the shift amount explicit as a variable
countriesAux = [countries, countries];  % Double array for circular indexing

% loading the size structure, but first as a table
sizeStruct = struct();
csvFileName = fullfile(project_path, "data", "size.csv");
sizeTable = table();
sizeTable = readtable(csvFileName, 'ReadRowNames', true, 'Range', 'A1:b15');
% Convert table to structure
sizeStruct = table2struct(sizeTable);
sizeStruct = cell2struct(struct2cell(sizeStruct)', sizeTable.Properties.RowNames);

% loading the tby structure, but first as a table
tbyStruct = struct();
csvFileName = fullfile(project_path, "data", "tby.csv");
tbyTable = table();
tbyTable = readtable(csvFileName, 'ReadRowNames', true, 'Range', 'A1:b15');
% Convert table to structure
tbyStruct = table2struct(tbyTable);
tbyStruct = cell2struct(struct2cell(tbyStruct)', tbyTable.Properties.RowNames);

%% Creating new tables (based on the IO tool)

newTable = struct();
for aItem = ["imcy", "imiy", "imcgy", "imigy"]
    csvFileName = fullfile(project, "data", aItem+".csv");
    newTable.(aItem) = table();
    newTable.(aItem) = readtable(csvFileName, 'ReadRowNames', true, 'Range', 'A1:o15');
end

%% writing mod trade calibration file
writeTradeModFile(fullfile(project_path, 'eagleParsingTemp/modFiles', 'trade_matrix_values_calibrated_new.mod'), newTable, sizeStruct, tbyStruct, countries, countriesAux, shiftAmount)
%% local functions
function writeTradeModFile(aFileName, aTable, sizeStruct, tbyStruct, countries, countriesAux, shiftAmount)
    fileID = fopen(aFileName, 'w');
    % Item loop
    for aItem = ["imcy", "imcgy", "imiy", "imigy"]
        % Outer loop
        for i = 1:length(countries)
            aCtry1 = countries(i);
            % Get residual country with circular indexing
            aCtryResid = countriesAux(i + shiftAmount);
            % Inner loop excluding both current and residual countries
            validCountries = countries ~= aCtry1 & countries ~= aCtryResid;
            for aCtry2 = countries(validCountries)
                fprintf(fileID, '%s%s_%s, %f;\n', aCtry1, aCtry2, aItem, aTable.(aItem){aCtry2, aCtry1});
            end
        end
    end
    
    % Item loop
    % Outer loop
    for i = 1:length(countries)
        aCtry2 = countries(i);
        for aItem = ["imcy", "imcgy", "imiy", "imigy"]
            fprintf(fileID, '%s_%s, %f;\n', aCtry2, aItem, sum(aTable.(aItem){:, aCtry2}, 'omitnan'));
        end
    end
    
    % Item loop
    % Outer loop
    for i = 1:length(countries)
        aCtry1 = countries(i);
        fprintf(fileID, '%s_size, %f;\n', aCtry1, sizeStruct.(aCtry1));
    end

    % Outer loop for printing tby, excluding 'US'
    for i = 1:length(countries)
        aCtry1 = countries(i);
        if ~strcmp(aCtry1, 'US')  % Check if the country is not 'US'
            fprintf(fileID, '%s_tby, %f;\n', aCtry1, tbyStruct.(aCtry1));
    end
end
    
    fprintf(fileID, 'RA_nuc, 0.90;\n');
    fprintf(fileID, 'AT_nuc, 0.65;\n');
    fprintf(fileID, 'BE_nuc, 0.65;\n');
    fprintf(fileID, 'ES_nuc, 0.65;\n');
    fprintf(fileID, 'FI_nuc, 0.65;\n');
    fprintf(fileID, 'GR_nuc, 0.65;\n');
    fprintf(fileID, 'IT_nuc, 0.65;\n');
    fprintf(fileID, 'NL_nuc, 0.65;\n');
    fprintf(fileID, 'PT_nuc, 0.65;\n');
    fprintf(fileID, 'DE_nuc, 0.65;\n');
    fprintf(fileID, 'RU_nuc, 0.65;\n');
    fprintf(fileID, 'US_nuc, 0.45;');
    
    % Close the file
    fclose(fileID);
end
