%% execution
createDiagrams('eagleParsingTemp_sim_BIG1', {'steady0', 'steady1', 'steady2', 'steady3', 'steady4', 'steady5'}, "EAB");

%% 
createDiagrams('Dynare_4-4-3', {'steady0', 'steady1', 'steady2'}, "EAB");

%% local functions
function createDiagrams(modelFolder, steadyStates, aCtry)
    % CREATEDIAGRAMS Creates multiple diagrams for different steady states
    % 
    % Inputs:
    %   modelFolder - String, name of the model folder
    %   steadyStates - Cell array or string array of steady state names
    %
    % Example:
    %   createDiagrams('eagleParsingTemp_sim_BIG1', {'steady0', 'steady1'})
    
    % Input validation
    validateattributes(modelFolder, {'char', 'string'}, {'nonempty'});
    if ischar(steadyStates) || isstring(steadyStates)
        steadyStates = {steadyStates};
    end
    validateattributes(steadyStates, {'cell'}, {'nonempty'});
    
    % Process each steady state
    cellfun(@(x) createDiagram(modelFolder, x, aCtry), steadyStates);
end

function createDiagram(modelFolder, aSteady, aCtry)
    % CREATEDIAGRAM Creates a single diagram for a specific steady state
    %
    % Inputs:
    %   modelFolder - String, name of the model folder
    %   aSteady - String, name of the steady state
    
    % Reading in project variables
    utils.call.paths;
    
    % Define paths and names using platform-independent path construction
    paths = definePaths(project_path, modelFolder, aSteady, aCtry);
    
    % Validate file existence
    validateFiles(paths);
    
    % Load and process steady state results
    [ssTable, paramTable] = loadSteadyStateResults(paths.resultsFile);
    ssParamTable = [ssTable; paramTable];
    
    % Calculate additional metrics
    ssParamTable = calculateAdditionalMetrics(ssParamTable, aCtry, modelFolder);
    
    % Process and update content
    updateContent(paths, ssParamTable, modelFolder, aCtry);
    
    % Export to PNG
    exportToPNG(paths.outputFile, paths.outputFilePng);
        
end

function paths = definePaths(projectPath, modelFolder, steadyState, aCtry)
    % Define all necessary paths in a structured way
    paths = struct();
    paths.baseDir = fullfile(projectPath, modelFolder, "modFiles");
    paths.outputFile = fullfile(paths.baseDir, steadyState + "_" + aCtry + "-diagram.md");
    paths.outputFilePng = fullfile(paths.baseDir, steadyState + "_" + aCtry + "-diagram.png");
    paths.resultsFile = fullfile(paths.baseDir, steadyState, "Output", ...
        steadyState + "_results.mat");
    % to accomodate the original EAGLE with g consisting of non-tradables
    % only, and hence a simpler chart
    if strcmp(modelFolder, "Dynare_4-4-3")
        paths.inputFile = fullfile(projectPath, 'aMyNotes', 'EAGLE_graph_orig.md');
    else
        paths.inputFile = fullfile(projectPath, 'aMyNotes', 'EAGLE_graph.md');
    end
    
end

function validateFiles(paths)
    % Validate existence of required files
    requiredFiles = {paths.inputFile, paths.resultsFile};
    for i = 1:length(requiredFiles)
        if ~isfile(requiredFiles{i})
            error('Required file does not exist: %s', requiredFiles{i});
        end
    end
end

function [ssTable, paramTable] = loadSteadyStateResults(resultsFile)
    % Load steady state results and convert to tables
    modStruct = load(resultsFile);
    
    ssTable = array2table(modStruct.oo_.steady_state, ...
        'RowNames', modStruct.M_.endo_names, ...
        'VariableNames', "ssValue");
    
    paramTable = array2table(modStruct.M_.params, ...
        'RowNames', modStruct.M_.param_names, ...
        'VariableNames', "ssValue");
end

function newTable = calculateAdditionalMetrics(inputTable, aCtry, modelFolder)
    % Calculate all additional metrics
    newTable = calculateTotalDemand(inputTable, aCtry, modelFolder);
    newTable = calculateEconomicRatios(newTable, aCtry, modelFolder);
end

function newTable = calculateTotalDemand(inputTable, aCtry, modelFolder)
    % Calculate total demand from components
    if strcmp(modelFolder, "Dynare_4-4-3")
        demandComponents = {'cy', 'iy', 'gy'};
    else
        demandComponents = {'cy', 'cgy', 'iy', 'igy'};
    end

    isDemand = ismember(inputTable.Properties.RowNames, ...
        strcat(aCtry, {'_'}, demandComponents));
    
    sumDemand = sum(inputTable.ssValue(isDemand));
    demandRow = table(sumDemand, ...
        'RowNames', aCtry + "_demandy", ...
        'VariableNames', {'ssValue'});
    
    newTable = [inputTable; demandRow];
end

function newTable = calculateEconomicRatios(inputTable, aCtry, modelFolder)
    % Calculate various economic ratios
    newTable = inputTable;
    s = tableToStruct(inputTable);
    
    % Acomodation of the original model with g consisting of non-tradables
    if strcmp(modelFolder, "Dynare_4-4-3")
        ratioCategories = struct(...
            'non_tradables', ["ntc", "nti", "nt"], ...
            'tradables', ["ttc", "tti"], ...
            'home_tradables', ["htc", "hti", "ht"], ...
            'exports', ["ex"]);
    else
        ratioCategories = struct(...
            'non_tradables', ["ntc", "ntcg", "nti", "ntig", "nt"], ...
            'tradables', ["ttc", "ttcg", "tti", "ttig"], ...
            'home_tradables', ["htc", "htcg", "hti", "htig", "ht"], ...
            'exports', ["ex"]);
    end
    
    newTable = calculateRatiosByCategory(newTable, s, aCtry, ratioCategories);
end

function newTable = calculateRatiosByCategory(baseTable, s, country, categories)
    newTable = baseTable;
    fields = fieldnames(categories);
    
    for i = 1:length(fields)
        items = categories.(fields{i});
        for j = 1:length(items)
            aItem = items(j);
            if strcmp(fields{i}, 'non_tradables')
                price = s.(country).pnt;
            elseif strcmp(fields{i}, 'home_tradables')
                price = s.(country).pht;
            elseif strcmp(fields{i}, 'exports')
                price = s.(country).pex;
            else % tradables and imports
                price = s.(country).("p" + aItem);
            end
            
            ratio = (s.(country).(aItem) * price) / (s.(country).py * s.(country).y);
            tempTable = table(ratio, ...
                'RowNames', country + "_" + aItem + "y", ...
                'VariableNames', {'ssValue'});
            newTable = [newTable; tempTable];
        end
    end
end

function outStructure = tableToStruct(inputTable)
    % Convert table to nested structure
    outStructure = struct();
    [fieldNames, fieldValues] = deal(inputTable.Properties.RowNames, ...
        inputTable.ssValue);
    
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

function updateContent(paths, ssParamTable, modelFolder, aCtry)
    % Update content with calculated values
    content = fileread(paths.inputFile);
    newContent = content;
    
    varsToReplace = getVariablesToReplace(modelFolder);
    for i = 1:length(varsToReplace)
        placeholder = ['#' varsToReplace{i} 'Value#'];
        value = sprintf('%.4f', ...
            ssParamTable{aCtry + "_" + string(varsToReplace{i}), "ssValue"});
        newContent = regexprep(newContent, placeholder, value);
    end
    
    writeContent(paths.outputFile, newContent);
end

function vars = getVariablesToReplace(modelFolder)
    % Define variables to replace
    if strcmp(modelFolder, "Dynare_4-4-3")
        vars = {
            'cy', 'gy', 'iy', 'ynty', 'yhty', 'tby', 'demandy', ...
            'nuc', 'nui', 'nutc', 'nuti', ...
            'ntcy', 'ntiy', 'ttcy', 'ttiy', ...
            'htcy', 'htiy', 'imcy', ...
            'imiy', 'hty', 'nty', 'imy', 'exy'
        };
    else
        vars = {
            'cy', 'cgy', 'iy', 'igy', 'ynty', 'yhty', 'tby', 'demandy', ...
            'nuc', 'nucg', 'nui', 'nuig', 'nutc', 'nutcg', 'nuti', 'nutig', ...
            'ntcy', 'ntiy', 'ntcgy', 'ntigy', 'ttcy', 'ttcgy', 'ttiy', ...
            'ttigy', 'htcy', 'htcgy', 'htiy', 'htigy', 'imcy', 'imcgy', ...
            'imiy', 'imigy', 'hty', 'nty', 'imy', 'exy'
        };
    end
end

function writeContent(outputFile, content)
    % Write content to file with error handling
    [fid, errmsg] = fopen(outputFile, 'w');
    if fid == -1
        error('Failed to open output file: %s', errmsg);
    end
    
    try
        fprintf(fid, '%s', content);
    catch ME
        fclose(fid);
        rethrow(ME);
    end
    
    fclose(fid);
end

function exportToPNG(inputFile, outputFile)
    % Export markdown to PNG with error handling
    [status, cmdout] = system(...
        sprintf('mmdc -i %s -o %s', inputFile, outputFile))
    
    if status ~= 0
        error('Failed to export to PNG: %s', cmdout);
    end
end