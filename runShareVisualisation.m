function createDiagram()

    % reading in project variables
    utils.call.paths;

    % Define paths and names
    modelFolder = "eagleParsingTemp_sim_BIG1";
    aSteady = "steady1";
    baseDir = fullfile(project_path, modelFolder, "modFiles");
    
    % Define input/output files
    inputFile = fullfile(project_path, 'aMyNotes/EAGLE_graph.md');
    outputFile = fullfile(baseDir, aSteady + "-diagram.md");
    
    % Load steady state results
    resultsFile = fullfile(baseDir, aSteady, "Output", aSteady + "_results.mat");
    modStruct = load(resultsFile);
    ssTable = array2table(modStruct.oo_.steady_state, ...
        'RowNames', modStruct.M_.endo_names, ...
        'VariableNames', "ssValue");
    paramTable = array2table(modStruct.M_.params, ...
        'RowNames', modStruct.M_.param_names, ...
        'VariableNames', "ssValue");
    ssParamTable = [ssTable; paramTable];

    % Calculating the total demand, which is not in the model
    ssParamTable = calculateTotalDemand(ssParamTable);

    % Calculating some other ratios, which are not in the model
    ssParamTable = calculateSomeRatios(ssParamTable);
    
    % Define variables to replace
    varsToReplace = {
        'cy'
        'cgy'
        'iy'
        'igy'
        'ynty'
        'yhty'
        'tby'
        'demandy'
        'nuc'
        'nucg'
        'nui'
        'nuig'
        'nutc'
        'nutcg'
        'nuti'
        'nutig'
        'ntcy'
        'ntiy'
        'ntcgy'
        'ntigy'
        'ttcy'
        'ttcgy'
        'ttiy'
        'ttigy'
    };
    
    % Read content
    content = fileread(inputFile);
    newContent = content;
    
    % Replace all variables
    for i = 1:size(varsToReplace, 1)
        placeholder = ['#' varsToReplace{i} 'Value#'];
        value = sprintf('%.4f', ssParamTable{['EAB_', varsToReplace{i}], "ssValue"});
        newContent = regexprep(newContent, placeholder, value);
    end
    
    % Write output
    fid = fopen(outputFile, 'w');
    fprintf(fid, '%s', newContent);
    fclose(fid);

end

function newTable = calculateTotalDemand(inputTable)
    % This function takes a table with a 'Quantity' column
    % and adds a new row with the sum of 'Apple' and 'Banana' quantities
    
    % Calculate sum of Apple and Banana quantities
    isDemand = ismember(inputTable.Properties.RowNames, strcat({'EAB'}, {'_'}, {'cy', 'cgy', 'iy', 'igy'}));
    sumSelected = sum(inputTable.ssValue(isDemand));
    
    % Create the new row
    demandRow = table(sumSelected, 'RowNames', strcat({'EAB'}, {'_'}, {'demandy'}), 'VariableNames', {'ssValue'});
    
    % Append the new row to the original table
    newTable = [inputTable; demandRow];
end

function newTable = calculateSomeRatios(inputTable)
    
    aCtry = "EAB";
    newTable = inputTable;
    s = tableToStruct(inputTable);

    % ratios for non-tradables
    for aItem = ["ntc", "ntcg", "nti", "ntig"]
        s.(aCtry).(aItem+"y") = (s.(aCtry).(aItem)*s.(aCtry).pnt)/(s.(aCtry).py*s.(aCtry).y);
        tempTable = table(s.(aCtry).(aItem+"y"), 'RowNames', aCtry+ "_" +aItem+"y", 'VariableNames', {'ssValue'});
        newTable = [newTable; tempTable];
    end

    % ratios for tradables
    for aItem = ["ttc", "ttcg", "tti", "ttig"]
        s.(aCtry).(aItem+"y") = (s.(aCtry).(aItem)*s.(aCtry).("p"+aItem))/(s.(aCtry).py*s.(aCtry).y);
        tempTable = table(s.(aCtry).(aItem+"y"), 'RowNames', aCtry+ "_" +aItem+"y", 'VariableNames', {'ssValue'});
        newTable = [newTable; tempTable];
    end

end

function outStructure = tableToStruct(inputTable)

    % Extract field names and values
    fieldNames = inputTable.Properties.RowNames;
    fieldValues = inputTable.ssValue;
    
    % Initialize the main structure
    outStructure = struct();
    
    % Create nested structures
    for i = 1:length(fieldNames)
        parts = strsplit(fieldNames{i}, '_');
        if length(parts) == 2
            if ~isfield(outStructure, parts{1})
                outStructure.(parts{1}) = struct();
            end
            outStructure.(parts{1}).(parts{2}) = fieldValues(i);
        end
    end

end