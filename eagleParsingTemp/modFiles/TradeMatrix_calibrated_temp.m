% Define country array
countries = ["EAA", "EAB", "EAC", "EAD", "EAE", "EAF", "EAG", "EAH", "EAI", "EAJ", "EAK", "EAL", "EAM", "RW", "US"];
calibCtryListModNames = ["EAB", "EAC", "EAD", "EAE", "EAG", "EAH", "EAI", "EAJ", "EAK", "EAL", "EAM"];
calibCtryListStdNames = ["AT", "BE", "FI", "FR", "NL", "ES", "GR", "IE", "IT", "PT", "DE"];
importItemListModNames = ["imcy", "imcgy", "imiy", "imigy"];
demandItemListModNames = ["cy", "cgy", "iy", "igy"];
demandItemListIoNames = ["FinalConHH", "FinalConGov", "PrivateInv", "GovInv"];

% Create circular array for residual countries
shiftAmount = 13;  % Making the shift amount explicit as a variable
countriesAux = [countries, countries];  % Double array for circular indexing

sizeStruct = struct(...
    'EAA', 0.012663, ...
    'EAB', 0.005512, ...
    'EAC', 0.007125, ...
    'EAD', 0.003496, ...
    'EAE', 0.042309, ...
    'EAF', 0.000346, ...
    'EAG', 0.010883, ...
    'EAH', 0.029400, ...
    'EAI', 0.007069, ...
    'EAJ', 0.002930, ...
    'EAK', 0.038346, ...
    'EAL', 0.006767, ...
    'EAM', 0.053153, ...
    'RW', 0.470000, ...
    'US', 0.310000);    


%% Creating orignal trade tables
fid = fopen('trade_matrix_values_calibrated_old.mod', 'r');
data = textscan(fileID, '%s %f', 'Delimiter', ',');
fclose(fileID);

% Create the structure
for i = 1:2:length(data{1})  % Step by 2 to skip semicolons
    % Remove any whitespace from the field name
    fieldName = strtrim(data{1}{i});
    % Get the value and remove the semicolon
    value = data{2}(i);
    % Store in structure
    s.(fieldName) = value;
end

% alocate the values from the structure
for aItem = ["imcy", "imcgy", "imiy", "imigy"]
    origTable.(aItem) = array2table(nan(length(countries), length(countries)), 'RowNames', countries, 'VariableNames', countries);
    for i = 1:length(countries)
        aCtry1 = countries(i);
        % Get residual country with circular indexing
        aCtryResid = countriesAux(i + shiftAmount);
        validCountries = countries ~= aCtry1 & countries ~= aCtryResid;
        for aCtry2 = countries(validCountries)
                origTable.(aItem){aCtry1, aCtry2} = s.(aCtry1+aCtry2+"_"+aItem);
        end
        origTable.(aItem){aCtry1, aCtryResid} = s.(aCtry1+"_"+aItem) - sum(origTable.(aItem){aCtry1, :}, 'omitnan');
    end
end


%% Creating new tables (based on the ECHT tool)
    xlsFileName = fullfile(project_path_echt, "import_shares_test.xlsx");
    newTable.imcy = table();
    newTable.imcy = readtable(xlsFileName, 'Sheet', 'Sheet1', 'Range', 'B44:P58');
    newTable.imcy.Properties.RowNames = countries;
    newTable.imcy.Properties.VariableNames = countries;

    newTable.imiy = table();
    xlsFileName = fullfile(project_path_echt, "import_shares_test.xlsx");
    newTable.imiy = readtable(xlsFileName, 'Sheet', 'Sheet1', 'Range', 'B62:P76');
    newTable.imiy.Properties.RowNames = countries;
    newTable.imiy.Properties.VariableNames = countries;

    newTable.imcy("EAF", :) = newTable.imcy("EAF", :)./2;
    newTable.imiy("EAF", :) = newTable.imiy("EAF", :)./2;

    newTable.imcgy = table();
    newTable.imcgy = newTable.imcy.*0.1;
    newTable.imcy = newTable.imcy.*0.9;

    newTable.imigy = table();
    newTable.imigy = newTable.imiy.*0.1;
    newTable.imiy = newTable.imiy.*0.9;

%% Creating new tables (based on the import content; this ammends the old table with the new information)

% starting with the orignal table
myTable = origTable;

% importing import content values from the i-o project
load(fullfile(project_path_io, "/databases/CalcDb_importWeights.mat"), 'WeightsDb');

% creating a structure with import contant
importContentStruct = struct();
for aCtryModName = calibCtryListModNames(1:11)
    for aDemandItem = demandItemListModNames
        importContentStruct.(aCtryModName).(aDemandItem) = ...
            mean(WeightsDb.(calibCtryListStdNames(aCtryModName == calibCtryListModNames)).(demandItemListIoNames(aDemandItem == demandItemListModNames)).data, 'omitnan');
    end
end

% creating a structure with steady1 ss values
steady1struct = load(fullfile(project_path, "eagleParsingTemp/modFiles/steady1/Output/steady1_results.mat"));
steady1struct.myStruct = cell2struct(num2cell(steady1struct.oo_.steady_state), steady1struct.M_.endo_names, 1);

% updating the myTables
for aCtryModName = calibCtryListModNames(1:11)
    for aItem = importItemListModNames
        aItemDemand = demandItemListModNames(aItem == importItemListModNames);
        myTable.(aItem){aCtryModName, :} = ...
            newTable.(aItem){aCtryModName, :}/sum(newTable.(aItem){aCtryModName, :}, "omitmissing") ...
            *importContentStruct.(aCtryModName).(aItemDemand)*steady1struct.myStruct.(aCtryModName + "_" + aItemDemand);
    end
end


%% writing mod trade calibration file
writeTradeModFile('trade_matrix_values_calibrated_new.mod', newTable, sizeStruct, countries, countriesAux, shiftAmount)
writeTradeModFile('trade_matrix_values_calibrated_oldReprinted.mod', origTable, sizeStruct, countries, countriesAux, shiftAmount)
writeTradeModFile('trade_matrix_values_calibrated_EABEAM.mod', myTable, sizeStruct, countries, countriesAux, shiftAmount)

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
                fprintf(fileID, '%s%s_%s, %f;\n', aCtry1, aCtry2, aItem, aTable.(aItem){aCtry1, aCtry2});
            end
        end
    end
    
    % Item loop
        % Outer loop
        for i = 1:length(countries)
            aCtry1 = countries(i);
    for aItem = ["imcy", "imcgy", "imiy", "imigy"]
            fprintf(fileID, '%s_%s, %f;\n', aCtry1, aItem, sum(aTable.(aItem){aCtry1, :}, 'omitnan'));
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