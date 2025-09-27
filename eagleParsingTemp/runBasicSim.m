% Loading necessary path variables and environment variables
utils.call.paths;
envi = environment.setup;

% Cding to a relevant directory
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

%% SS version of the model; just loading to make sure it works, no solution here
dynare('load0.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% non-SS version of the model; also loading to make sure it works
dynare('eagleModel.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% solving for the initial version of the stady state
dynare('steady0.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% 
dynare('steady1a.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% 
dynare('steady1b.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
dynare('steady2.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%

% Define constants for hardcoded parameters
NUCCES_VALUE = 0.75;
MUCCES_VALUE = 0.2;
ELASTICITY_SUBSTITUTION = 0.3;

replaceInTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs.mod") ...
    , fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs_govCo.mod") ...
    , '@#include "modeqs_hhI.mod"' ...
    , '@#include "modeqs_hhI_govCons.mod"' ...
    , '@#include "modeqs_hhJ.mod"' ...
    , '@#include "modeqs_hhJ_govCons.mod"' ...    
);

% Define the new lines to append as a single string with the updated format
linesToAppend = "var " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_ccesi @{co}_ccesj @{co}_dcci @{co}_dccj" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline + ...
    "parameters " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_mucces @{co}_nucces" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline;

appendTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls.mod"), ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls_govCo.mod"), ...
    linesToAppend ...
);

steady2output = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady2', 'Output', 'steady2_results.mat'));
steady2struct = struct();

for exoVar = string(reshape(steady2output.M_.exo_names, 1, []))
    steady2struct.exo_names.(exoVar) = steady2output.oo_.exo_steady_state(strcmp(exoVar, steady2output.M_.exo_names));
end

for paramName = string(reshape(steady2output.M_.param_names, 1, []))
    steady2struct.params.(paramName) = steady2output.M_.params(strcmp(paramName, steady2output.M_.param_names));
end

for i = 1:length(envi.Meta.ctryList)
    countryCode = envi.Meta.ctryList(i);
    steady2struct.params.(countryCode+"_nucces") = NUCCES_VALUE;
    steady2struct.params.(countryCode+"_mucces") = MUCCES_VALUE;
end

varList = steady2output.M_.endo_names(~startsWith(steady2output.M_.endo_names, 'AUX_ENDO_'));
for varName = string(reshape(varList, 1, []))
    steady2struct.ssValues.(varName) = steady2output.oo_.steady_state(strcmp(varName, varList));
end

% Calculate CES aggregation parameters
inv_elasticity = 1/ELASTICITY_SUBSTITUTION;
elasticity_exp = 1 - inv_elasticity;
nucces_power = NUCCES_VALUE^inv_elasticity;
one_minus_nucces_power = (1-NUCCES_VALUE)^inv_elasticity;

for i = 1:length(envi.Meta.ctryList)
    countryCode = envi.Meta.ctryList(i);
    
    % Extract consumption values for readability
    ci_val = steady2struct.ssValues.(countryCode+"_ci");
    cj_val = steady2struct.ssValues.(countryCode+"_cj");
    cg_val = steady2struct.ssValues.(countryCode+"_cg");
    
    % CES aggregation for household i
    ces_base_i = nucces_power * ci_val^elasticity_exp + one_minus_nucces_power * cg_val^elasticity_exp;
    steady2struct.ssValues.(countryCode+"_ccesi") = ces_base_i^(1/elasticity_exp);
    
    % CES aggregation for household j
    ces_base_j = nucces_power * cj_val^elasticity_exp + one_minus_nucces_power * cg_val^elasticity_exp;
    steady2struct.ssValues.(countryCode+"_ccesj") = ces_base_j^(1/elasticity_exp);
    
    % Derivative calculations
    common_derivative_factor = 1/(ELASTICITY_SUBSTITUTION-1);
    steady2struct.ssValues.(countryCode+"_dcci") = ces_base_i^common_derivative_factor * nucces_power * ci_val^(-inv_elasticity);
    steady2struct.ssValues.(countryCode+"_dccj") = ces_base_j^common_derivative_factor * nucces_power * cj_val^(-inv_elasticity);
end

% Write steady state structure to file
outputFilename = fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'eagle_steady_govCo_stage0.txt');
writeSteadyStateStruct(steady2struct, outputFilename);
%%


dynare('steady3.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%

% Define constants for hardcoded parameters
DELTAG_VALUE = 0.025;
ALPHAG_VALUE = 0;

replaceInTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs_govCo.mod") ...
    , fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs_govInv.mod") ...
    , '@#include "modeqs_Prod.mod"' ...
    , '@#include "modeqs_Prod_kg.mod"' ...
    , 'G7k4j7oU4boNLEKD' ...
    , '' ...    
);

% Define the new lines to append as a single string with the updated format
linesToAppend = "var " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_kg" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline + ...
    "parameters " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_alphag @{co}_deltag" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline;

appendTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls_govCo.mod"), ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls_govInv.mod"), ...
    linesToAppend ...
);

steady3output = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady3', 'Output', 'steady3_results.mat'));
steady3struct = struct();

for exoVar = string(reshape(steady3output.M_.exo_names, 1, []))
    steady3struct.exo_names.(exoVar) = steady3output.oo_.exo_steady_state(strcmp(exoVar, steady3output.M_.exo_names));
end

for paramName = string(reshape(steady3output.M_.param_names, 1, []))
    steady3struct.params.(paramName) = steady3output.M_.params(strcmp(paramName, steady3output.M_.param_names));
end

for i = 1:length(envi.Meta.ctryList)
    countryCode = envi.Meta.ctryList(i);
    steady3struct.params.(countryCode+"_deltag") = DELTAG_VALUE;
    steady3struct.params.(countryCode+"_alphag") = ALPHAG_VALUE;
end

varList = steady3output.M_.endo_names(~startsWith(steady3output.M_.endo_names, 'AUX_ENDO_'));
for varName = string(reshape(varList, 1, []))
    steady3struct.ssValues.(varName) = steady3output.oo_.steady_state(strcmp(varName, varList));
end
% Calculate capital stock from investment and depreciation rate
for i = 1:length(envi.Meta.ctryList)
    countryCode = envi.Meta.ctryList(i);
    investmentValue = steady3struct.ssValues.(countryCode+"_ig");
    steady3struct.ssValues.(countryCode+"_kg") = investmentValue / DELTAG_VALUE;
end

% Write steady state structure to file
outputFilename = fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'eagle_steady_govInv_stage0.txt');
writeSteadyStateStruct(steady3struct, outputFilename);

%%

dynare('steady4.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
dynare('steady6.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
dynare('steady7.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% Printing the evolution of the SS solution to a txt file so that it can be tracked (if needed)

% Load the model results (so that the block can be run separately)
lastestModelResults = load(fullfile(project_path, 'eagleParsingTemp/modFiles/steady7/Output/steady7_results.mat'));

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

% Initialize exogenous variables table with NaN values
exoTable = table('Size', [size(lastestModelResults.M_.exo_names, 1), size(ssStepList, 2)], ...
                  'VariableTypes', repmat({'double'}, 1, size(ssStepList, 2)), ...
                  'RowNames', lastestModelResults.M_.exo_names, ...
                  'VariableNames', ssStepList);
exoTable{:, :} = NaN;

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

    % Fill exogenous variables table with values (skip missing variables)
    for aExo = reshape(string(exoTable.Properties.RowNames), 1, [])
        try
            exoTable{aExo, ssStepList{aStepIndex}} = tempTable{aExo, "Value"};
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

fprintf(fileID, '\n\n\nEXOGENOUS VARIABLES EVOLUTION\n');
fprintf(fileID, '=============================\n\n');
writeFormattedTable(fileID, exoTable);

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

function writeSteadyStateStruct(steadyStruct, filename)
    % Write steady state structure to file with error handling
    
    fileID = fopen(filename, 'w');
    if fileID == -1
        error('Failed to open file for writing: %s', filename);
    end
    
    try
        % Loop through each field type in the structure
        for fieldType = ["params", "ssValues", "exo_names"]
            if isfield(steadyStruct, fieldType)
                fields = fieldnames(steadyStruct.(fieldType));
                for i = 1:length(fields)
                    fieldName = fields{i};
                    fieldValue = steadyStruct.(fieldType).(fieldName);
                    fprintf(fileID, '%s %f\n', fieldName, fieldValue);
                end
            end
        end
    catch ME
        fclose(fileID);
        rethrow(ME);
    end
    
    fclose(fileID);
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