
% Define country array
countries = ["EAA", "EAB", "EAC", "EAD", "EAE", "EAF", "EAG", "EAH", "EAI", "EAJ", "EAK", "EAL", "EAM", "RW", "US"];

    xlsFileName = fullfile(project_path_echt, "import_shares_test.xlsx");
    table.imcy = readtable(xlsFileName, 'Sheet', 'Sheet1', 'Range', 'B44:P58');
    table.imcy.Properties.RowNames = countries;
    table.imcy.Properties.VariableNames = countries;

    xlsFileName = fullfile(project_path_echt, "import_shares_test.xlsx");
    table.imiy = readtable(xlsFileName, 'Sheet', 'Sheet1', 'Range', 'B62:P76');
    table.imiy.Properties.RowNames = countries;
    table.imiy.Properties.VariableNames = countries;

    table.imcy("EAF", :) = table.imcy("EAF", :)./2;
    table.imiy("EAF", :) = table.imiy("EAF", :)./2;

    table.imcgy = table.imcy.*0.1;
    table.imcy = table.imcy.*0.9;

    table.imigy = table.imiy.*0.1;
    table.imiy = table.imiy.*0.9;


% Create circular array for residual countries
shiftAmount = 13;  % Making the shift amount explicit as a variable
countriesAux = [countries, countries];  % Double array for circular indexing

% Open file for writing
fileID = fopen('country_labels.txt', 'w');

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
            fprintf(fileID, '%s%s_%s, %f;\n', aCtry1, aCtry2, aItem, table.(aItem){aCtry1, aCtry2});
        end
    end
end

% Item loop
    % Outer loop
    for i = 1:length(countries)
        aCtry1 = countries(i);
for aItem = ["imcy", "imcgy", "imiy", "imigy"]
        fprintf(fileID, '%s_%s, %f;\n', aCtry1, aItem, sum(table.(aItem){aCtry1, :}, 'omitnan'));
    end
    end

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

% Item loop
    % Outer loop
    for i = 1:length(countries)
        aCtry1 = countries(i);
        fprintf(fileID, '%s_size, %f;\n', aCtry1, sizeStruct.(aCtry1));
    end

% Close the file
fclose(fileID);