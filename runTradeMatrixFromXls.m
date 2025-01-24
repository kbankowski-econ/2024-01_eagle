% Define country array
countries = ["EAA", "EAB", "EAC", "EAD", "EAE", "EAF", "EAG", "EAH", "EAI", "EAJ", "EAK", "EAL", "RW", "US"];
calibCtryListModNames = ["EAB", "EAC", "EAD", "EAE", "EAG", "EAH", "EAI", "EAJ", "EAK", "EAL", "EAM"];
calibCtryListStdNames = ["AT", "BE", "FI", "FR", "NL", "ES", "GR", "IE", "IT", "PT", "DE"];
importItemListModNames = ["imcy", "imcgy", "imiy", "imigy"];
demandItemListModNames = ["cy", "cgy", "iy", "igy"];
demandItemListIoNames = ["FinalConHH", "FinalConGov", "PrivateInv", "GovInv"];

% Create circular array for residual countries
shiftAmount = 12;  % Making the shift amount explicit as a variable
countriesAux = [countries, countries];  % Double array for circular indexing

% ranges to read the numbers from
rangeMatrixBegin = "A"+["3", "21", "39", "57"];
rangeMatrixEnd = "O"+["17", "35", "53", "71"];
rangeMatrix = rangeMatrixBegin' + ":" + rangeMatrixEnd';
rangeStruct = struct('imcy', rangeMatrix(1), 'imcgy', rangeMatrix(2), 'imiy', rangeMatrix(3), 'imigy', rangeMatrix(4));


%% loading the size structure, but first as a table
sizeStruct = struct();
csvFileName = fullfile(project_path_io, "databases/tables/oecd", "size.csv");
sizeTable = table();
sizeTable = readtable(csvFileName, 'ReadRowNames', true, 'Range', 'A1:b15');
% Convert table to structure
sizeStruct = table2struct(sizeTable);
sizeStruct = cell2struct(struct2cell(sizeStruct)', sizeTable.Properties.RowNames);

%% Creating new tables (based on the IO tool)

newTable = struct();
for aItem = ["imcy", "imiy", "imcgy", "imigy"]
    xlsFilePath = fullfile(project_path, "aMyNotes/investigCloseLookTradeBalance.xlsx");
    newTable.(aItem) = table();
    newTable.(aItem) = readtable(xlsFilePath, 'Sheet', 'shareCalc', 'ReadRowNames', true, 'Range', rangeStruct.(aItem));
end

%% writing mod trade calibration file
writeTradeModFile('tradeMatrixFabio.mod', newTable, sizeStruct, countries, countriesAux, shiftAmount)
% writeTradeModFile('trade_matrix_values_calibrated_oldReprinted.mod', origTable, sizeStruct, countries, countriesAux, shiftAmount)
% writeTradeModFile('trade_matrix_values_calibrated_EABEAM.mod', myTable, sizeStruct, countries, countriesAux, shiftAmount)

%% local functions
function writeTradeModFile(aFileName, aTable, sizeStruct, countries, countriesAux, shiftAmount)

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
    
    % Close the file
    fclose(fileID);

end