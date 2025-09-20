%// NOTE: next step is to introduce the missing elements of the
% import content that may be not covered in the loops (see also
% some TODO items; first to load the model and then later to
% solve for its SS)

utils.call.paths;
% Cding to a relevant directory
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

%% SS version of the model
dynare('load0.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% non-SS version of the model
dynare('eagleModel.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
dynare('steady0.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% 
dynare('steady1a.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% 
dynare('steady1b.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
dynare('steady2.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
countries = [ "RA", "AT", "BE", "ES", "FI", "FR", "GR", "IT", "NL", "PT", "DE", "RU", "RW", "US"];

replaceInTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs.mod") ...
    , fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs_govCo.mod") ...
    , '@#include "modeqs_hhI.mod"' ...
    , '@#include "modeqs_hhI_govCons.mod"' ...
    , '@#include "modeqs_hhJ.mod"' ...
    , '@#include "modeqs_hhJ_govCons.mod"' ...    
);

% Define the new lines to append as a single string with the updated format
linesToAppend = [
    "var " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_ccesi @{co}_ccesj @{co}_dcci @{co}_dccj" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline + ...
    "parameters " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_mucces @{co}_nucces" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline
];

appendTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls.mod"), ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls_govCo.mod"), ...
    linesToAppend ...
);

steady2output = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady2', 'Output', 'steady2_results.mat'));
steady2struct = struct();

for aExoVar = string(reshape(steady2output.M_.exo_names, 1, []))
    steady2struct.exo_names.(aExoVar) = steady2output.oo_.exo_steady_state(strcmp(aExoVar, steady2output.M_.exo_names));
end

for aParam = string(reshape(steady2output.M_.param_names, 1, []))
    steady2struct.params.(aParam) = steady2output.M_.params(strcmp(aParam, steady2output.M_.param_names));
end
for i = 1:length(countries)
    aCountry = countries(i);
    steady2struct.params.(aCountry+"_nucces") = 0.75;
    steady2struct.params.(aCountry+"_mucces") = 0.3;
end

varList = steady2output.M_.endo_names(~startsWith(steady2output.M_.endo_names, 'AUX_ENDO_'));
for aVar = string(reshape(varList, 1, []))
    steady2struct.ssValues.(aVar) = steady2output.oo_.steady_state(strcmp(aVar, varList));
end
for i = 1:length(countries)
    aCountry = countries(i);
    steady2struct.ssValues.(aCountry+"_ccesi") = ((0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_ci")^(1-1/0.3)+(1-0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cg")^(1-1/0.3))^(1/(1-1/0.3));
    steady2struct.ssValues.(aCountry+"_ccesj") = ((0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cj")^(1-1/0.3)+(1-0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cg")^(1-1/0.3))^(1/(1-1/0.3));
    steady2struct.ssValues.(aCountry+"_dcci") = ((0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_ci")^(1-1/0.3)+(1-0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cg")^(1-1/0.3))^(1/(0.3-1))*(0.75^(1/0.3))*(steady2struct.ssValues.(aCountry+"_ci")^(-1/0.3));
    steady2struct.ssValues.(aCountry+"_dccj") = ((0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cj")^(1-1/0.3)+(1-0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cg")^(1-1/0.3))^(1/(0.3-1))*(0.75^(1/0.3))*(steady2struct.ssValues.(aCountry+"_cj")^(-1/0.3));

end

    

% Specify the output file name
filename = fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'eagle_steady_govCo_stage0.txt');
% Open the file for writing
fileID = fopen(filename, 'w');
% Check if the file was opened successfully
if fileID == -1
    error('Failed to open the file.');
end
% Loop through each field in the structure
for aType = ["params", "ssValues", "exo_names"]
    fields = fieldnames(steady2struct.(aType));
    for i = 1:length(fields)
        % Get the field name
        fieldName = fields{i};
        % Get the value associated with the field
        fieldValue = steady2struct.(aType).(fieldName);
        % Write the field name and value to the file
        fprintf(fileID, '%s %f\n', fieldName, fieldValue);
    end
end

% Close the file
fclose(fileID);

dynare('steady3.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
replaceInTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs_govCo.mod") ...
    , fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs_govInv.mod") ...
    , '@#include "modeqs_Prod.mod"' ...
    , '@#include "modeqs_Prod_kg.mod"' ...
    , 'G7k4j7oU4boNLEKD' ...
    , '' ...    
);

% Define the new lines to append as a single string with the updated format
linesToAppend = [
    "var " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_kg" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline + ...
    "parameters " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_alphag @{co}_deltag" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline
];

appendTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls_govCo.mod"), ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls_govInv.mod"), ...
    linesToAppend ...
);

steady3output = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady3', 'Output', 'steady3_results.mat'));
steady3struct = struct();

for aExoVar = string(reshape(steady3output.M_.exo_names, 1, []))
    steady3struct.exo_names.(aExoVar) = steady3output.oo_.exo_steady_state(strcmp(aExoVar, steady3output.M_.exo_names));
end

for aParam = string(reshape(steady3output.M_.param_names, 1, []))
    steady3struct.params.(aParam) = steady3output.M_.params(strcmp(aParam, steady3output.M_.param_names));
end

for i = 1:length(countries)
    aCountry = countries(i);
    steady3struct.params.(aCountry+"_deltag") = 0.025;
    steady3struct.params.(aCountry+"_alphag") = 0;
end

varList = steady3output.M_.endo_names(~startsWith(steady3output.M_.endo_names, 'AUX_ENDO_'));
for aVar = string(reshape(varList, 1, []))
    steady3struct.ssValues.(aVar) = steady3output.oo_.steady_state(strcmp(aVar, varList));
end
for i = 1:length(countries)
    aCountry = countries(i);
    steady3struct.ssValues.(aCountry+"_kg") = steady3struct.ssValues.(aCountry+"_ig")/steady3struct.params.(aCountry+"_deltag");
end

% Specify the output file name
filename = fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'eagle_steady_govInv_stage0.txt');
% Open the file for writing
fileID = fopen(filename, 'w');
% Check if the file was opened successfully
if fileID == -1
    error('Failed to open the file.');
end
% Loop through each field in the structure
for aType = ["params", "ssValues", "exo_names"]
    fields = fieldnames(steady3struct.(aType));
    for i = 1:length(fields)
        % Get the field name
        fieldName = fields{i};
        % Get the value associated with the field
        fieldValue = steady3struct.(aType).(fieldName);
        % Write the field name and value to the file
        fprintf(fileID, '%s %f\n', fieldName, fieldValue);
    end
end

% Close the file
fclose(fileID);

dynare('steady4.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
dynare('steady6.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
dynare('steady7.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% Printing the evolution of the SS solution to a txt file so that it can be tracked (if needed)

% Load the model results (so that the block can be run separately)
lastestModelResults = load(strcat(project_path, '/', 'eagleParsingTemp/modFiles/steady7/Output/steady7_results.mat'));

% Define steady state step names and corresponding text file names
ssStepList = {'steady0', 'steady1a', 'steady1b', 'steady2', 'steady3', 'steady4', 'steady6', 'steady7'};
ssTextFile = {'eagle_steady_stage0', 'eagle_steady_stage1a', 'eagle_steady_stage1b', 'eagle_steady', ...
              'eagle_steady_govCo', 'eagle_steady_govInv', 'eagle_steady_stage_trade', 'eagle_steady_stage_trade'};

% Initialize parameter table with NaN values
paraTable = table('Size', [size(lastestModelResults.M_.param_names, 1), size(ssStepList, 2)], ...
                  'VariableTypes', repmat({'double'}, 1, size(ssStepList, 2)), ...
                  'RowNames', lastestModelResults.M_.param_names, ...
                  'VariableNames', ssStepList);
paraTable{:, :} = NaN;

% Initialize endogenous variables table with NaN values (exclude auxiliary variables)
endoTable = table('Size', [size(lastestModelResults.M_.endo_names(~startsWith(lastestModelResults.M_.endo_names, "AUX_")), 1), size(ssStepList, 2)], ...
                  'VariableTypes', repmat({'double'}, 1, size(ssStepList, 2)), ...
                  'RowNames', lastestModelResults.M_.endo_names(~startsWith(lastestModelResults.M_.endo_names, "AUX_")), ...
                  'VariableNames', ssStepList);
endoTable{:, :} = NaN;

%% Creating tables containing steady state values of all steps
for aStepIndex = 1:numel(ssStepList)
    
    % Read steady state values from text file
    tempTable = readSteadyStateFile(fullfile(project_path, sprintf('eagleParsingTemp/modFiles/%s.txt', ssTextFile{aStepIndex})));
    
    % Fill parameter table with values (skip missing parameters)
    for aParam = reshape(string(paraTable.Properties.RowNames), 1, [])
        try
            paraTable{aParam, ssStepList{aStepIndex}} = tempTable{aParam, "Value"};
        catch
            % Skip parameters not found in current step
        end
    end
    
    % Fill endogenous variables table with values (skip missing variables)
    for aEndo = reshape(string(endoTable.Properties.RowNames), 1, [])
        try
            endoTable{aEndo, ssStepList{aStepIndex}} = tempTable{aEndo, "Value"};
        catch
            % Skip variables not found in current step
        end
    end
    
end

%% Save steady state evolution tables to text file
outputFile = fullfile(project_path, 'eagleParsingTemp/runBasicSim_ssValueEvolution.txt');
fileID = fopen(outputFile, 'w');

% Write parameter table with formatting
fprintf(fileID, 'PARAMETER VALUES EVOLUTION\n');
fprintf(fileID, '==========================\n\n');
writeFormattedTable(fileID, paraTable);

fprintf(fileID, '\n\n\nENDOGENOUS VARIABLES EVOLUTION\n');
fprintf(fileID, '==============================\n\n');
writeFormattedTable(fileID, endoTable);

fclose(fileID);

%% local functions
function replaceInTextFile(originalFileName, newFileName, replaceContent, newReplaceContent, replaceContent2, newReplaceContent2)
    
    % Read the content of the original file
    fileContent = fileread(originalFileName);
    
    % Replace the string
    newContent = strrep(fileContent, replaceContent, newReplaceContent);
    newContent = strrep(newContent, replaceContent2, newReplaceContent2);

    % Open the new file for writing
    fileID = fopen(newFileName, 'w');
    
    % Check if the file is open successfully
    if fileID == -1
        error('Failed to open file for writing.');
    end
    
    % Write the new content to the file
    fwrite(fileID, newContent);
    
    % Close the file
    fclose(fileID);

end

function appendTextFile(originalFileName, newFileName, linesToAppend)
    % Read the original file content
    fileContent = fileread(originalFileName);

    % Combine the original content with the new lines
    newContent = fileContent + linesToAppend;

    % Open the new file for writing
    fileID = fopen(newFileName, 'w');
    
    % Check if the file is open successfully
    if fileID == -1
        error('Failed to open file for writing.');
    end

    % Write the new content to the new file
    fprintf(fileID, '%s', newContent);

    % Close the file
    fclose(fileID);
end

function dataTable = readSteadyStateFile(filename)
      % Read steady state file and create a table with row names and values

      % Read the file
      fileData = readtable(filename, 'Delimiter', ' ', 'ReadVariableNames', false);

      % Extract variable names and values
      varNames = fileData.Var1;
      values = fileData.Var2;

      % Create table with row names
      dataTable = table(values, 'RowNames', varNames, 'VariableNames', {'Value'});
end

function writeFormattedTable(fileID, dataTable)
    % Write formatted table with aligned columns
    
    % Get table properties
    rowNames = dataTable.Properties.RowNames;
    colNames = dataTable.Properties.VariableNames;
    tableData = table2array(dataTable);
    
    % Calculate column widths
    maxRowNameWidth = max(cellfun(@length, rowNames));
    colWidths = zeros(1, length(colNames));
    
    for i = 1:length(colNames)
        colWidths(i) = max([length(colNames{i}), ...
                           max(arrayfun(@(x) length(sprintf('%.4g', x)), tableData(:, i)))]);
    end
    
    % Write column headers
    fprintf(fileID, sprintf('%%-%ds', maxRowNameWidth), '');
    for i = 1:length(colNames)
        fprintf(fileID, sprintf('    %%-%ds', colWidths(i)), colNames{i});
    end
    fprintf(fileID, '\n');
    
    % Write table data
    for i = 1:size(tableData, 1)
        fprintf(fileID, sprintf('%%-%ds', maxRowNameWidth), rowNames{i});
        for j = 1:size(tableData, 2)
            if isnan(tableData(i, j))
                fprintf(fileID, sprintf('    %%-%ds', colWidths(j)), 'NaN');
            else
                fprintf(fileID, sprintf('    %%-%ds', colWidths(j)), sprintf('%.4g', tableData(i, j)));
            end
        end
        fprintf(fileID, '\n');
    end
end