% Define the input and output file paths
inputFilePath = 'trade_matrix_values_calibrated_int.mod';
outputFilePath = 'version3.csv';

% Read the entire content of the .mod file
fileContent = fileread(inputFilePath);

% Split the content by semicolons to get individual data pairs
dataPairs = strsplit(fileContent, ';');

% Initialize cell arrays to store the parsed data
variables = {};
values = {};

% Iterate over each data pair
for i = 1:length(dataPairs)
    % Trim any leading or trailing whitespace
    dataPair = strtrim(dataPairs{i});
    
    % Skip empty strings (in case of trailing semicolon)
    if isempty(dataPair)
        continue;
    end
    
    % Split the data pair by comma to separate variable and value
    parts = strsplit(dataPair, ',');
    
    % Store the variable name and value
    variables{end+1} = strtrim(parts{1});  % Variable name
    values{end+1} = str2double(strtrim(parts{2}));  % Value
end

% Create a table from the parsed data
dataTable = table(variables', values', 'VariableNames', {'Variable', 'Value'});

% Write the table to a CSV file
writetable(dataTable, outputFilePath);

% Display a message indicating that the process is complete
disp(['Data has been successfully written to ', outputFilePath]);