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
    newRow = table(sumSelected, 'RowNames', strcat({'EAB'}, {'_'}, {'demandy'}), 'VariableNames', {'ssValue'});
    
    % Append the new row to the original table
    newTable = [inputTable; newRow];
end