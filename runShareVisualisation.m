%% execution
createDiagrams('eagleParsingTemp', ...
    {'steady1'}, ...
    {'EAA', 'EAB', 'EAC', 'EAD', 'EAE', 'EAF', 'EAG', 'EAH', 'EAI', 'EAJ', 'EAK', 'EAL', 'EAM', 'RW', 'US'});
%%
createDiagrams('eagleParsingTemp_sim_BIG1', ...
    {'steady0', 'steady1', 'steady2', 'steady3', 'steady4', 'steady5'}, ...
    {'EAA', 'EAB', 'RW', 'US'});

%% 
createDiagrams('Dynare_4-4-3', {'steady0', 'steady1', 'steady2'}, {'EAA', 'EAB', 'RW', 'US'});

%% local functions
function createDiagrams(modelFolder, steadyStates, countries)
    % CREATEDIAGRAMS Creates multiple diagrams for different steady states and countries
    % 
    % Inputs:
    %   modelFolder  - String, name of the model folder
    %   steadyStates - Cell array of steady state names
    %   countries    - Cell array or string array of country identifiers
    %
    % Example:
    %   createDiagrams('Dynare_4-4-3', {'steady0', 'steady1'}, {'EAA', 'EAB'})
    
    % Input validation
    validateInputs(modelFolder, steadyStates, countries);
    
    % Convert input arrays to cell if needed
    steadyStates = convertToCell(steadyStates);
    countries = convertToCell(countries);
    
    % Create diagrams for each combination of steady state and countryagain
    %
    for country = countries
        for steadyState = steadyStates
            processConfiguration(modelFolder, steadyState{1}, country{1});
        end
    end

end

function validateInputs(modelFolder, steadyStates, countries)
    % Validate input parameters
    validateattributes(modelFolder, {'char', 'string'}, ...
        {'nonempty'}, 'createDiagrams', 'modelFolder');
    
    if ~(iscell(steadyStates) || ischar(steadyStates) || isstring(steadyStates))
        error('EAGLE:InvalidInput', ...
            'steadyStates must be a cell array, string, or char array');
    end
    
    if ~(iscell(countries) || ischar(countries) || isstring(countries))
        error('EAGLE:InvalidInput', ...
            'countries must be a cell array, string, or char array');
    end
end

function cellArray = convertToCell(input)
    % Convert input to cell array if it's not already
    if ischar(input)
        cellArray = {input};
    elseif isstring(input)
        cellArray = cellstr(input);
    else
        cellArray = input;
    end
end

function processConfiguration(modelFolder, steadyState, country)
    % Process a single configuration (model, steady state, country)

    % Initialize configuration
    config = initializeConfig(modelFolder, steadyState, country);
    
    % Generate diagram
    generateDiagram(config);

end

function config = initializeConfig(modelFolder, steadyState, country)
    % Initialize configuration structure
    config = struct();
    config.modelFolder = modelFolder;
    config.steadyState = steadyState;
    config.country = country;
    
    % Set up paths
    utils.call.paths;  % Assuming this is required for project_path
    config.paths = setupPaths(project_path, modelFolder, steadyState, country);
    
    % Determine model type
    config.isOriginalEagle = strcmp(modelFolder, "Dynare_4-4-3");
end

function paths = setupPaths(projectPath, modelFolder, steadyState, country)
    % Set up all required paths
    paths = struct();
    paths.baseDir = fullfile(projectPath, modelFolder, "modFiles");
    paths.outputFile = fullfile(paths.baseDir, ...
        steadyState + "_" + country + "-diagram.md");
    paths.outputFilePng = fullfile(paths.baseDir, ...
        steadyState + "_" + country + "-diagram.png");
    paths.resultsFile = fullfile(paths.baseDir, steadyState, "Output", ...
        steadyState + "_results.mat");
    
    % Select appropriate input template
    if strcmp(modelFolder, "Dynare_4-4-3")
        paths.inputFile = fullfile(projectPath, 'aMyNotes', ...
            'EAGLE_graph_orig.md');
    else
        paths.inputFile = fullfile(projectPath, 'aMyNotes', ...
            'EAGLE_graph.md');
    end
    
    validatePaths(paths);
end

function generateDiagram(config)
    % Generate diagram from configuration

    % Load and process data
    [ssTable, paramTable] = loadModelResults(config.paths.resultsFile);
    combinedTable = [ssTable; paramTable];
    
    % Calculate metrics
    processedTable = calculateMetrics(combinedTable, config);
    
    % Generate the diagram
    updateContent(config.paths, processedTable, config);
    
    % Export to PNG
    exportToPNG(config.paths.outputFile, config.paths.outputFilePng);

end

function [ssTable, paramTable] = loadModelResults(resultsFile)
    % Load model results from file
    try
        modStruct = load(resultsFile);
        
        ssTable = array2table(modStruct.oo_.steady_state, ...
            'RowNames', modStruct.M_.endo_names, ...
            'VariableNames', "ssValue");
        
        paramTable = array2table(modStruct.M_.params, ...
            'RowNames', modStruct.M_.param_names, ...
            'VariableNames', "ssValue");
    catch ME
        error('EAGLE:LoadError', ...
            'Failed to load model results: %s', ME.message);
    end
end

function processedTable = calculateMetrics(inputTable, config)
    % Calculate all metrics
    processedTable = calculateDemand(inputTable, config);
    processedTable = calculateRatios(processedTable, config);
end

function outputTable = calculateDemand(inputTable, config)
    % Calculate demand components
    if config.isOriginalEagle
        components = {'cy', 'iy', 'gy'};
    else
        components = {'cy', 'cgy', 'iy', 'igy'};
    end
    
    isDemand = ismember(inputTable.Properties.RowNames, ...
        strcat(config.country, {'_'}, components));
    
    totalDemand = sum(inputTable.ssValue(isDemand));
    demandRow = table(totalDemand, ...
        'RowNames', config.country + "_demandy", ...
        'VariableNames', {'ssValue'});
    
    outputTable = [inputTable; demandRow];
end

function outputTable = calculateRatios(inputTable, config)
    % Calculate economic ratios
    s = tableToStruct(inputTable);
    
    if config.isOriginalEagle
        categories = struct(...
            'non_tradables', ["ntc", "nti", "nt"], ...
            'tradables', ["ttc", "tti"], ...
            'home_tradables', ["htc", "hti", "ht"], ...
            'exports', ["ex"]);
    else
        categories = struct(...
            'non_tradables', ["ntc", "ntcg", "nti", "ntig", "nt"], ...
            'tradables', ["ttc", "ttcg", "tti", "ttig"], ...
            'home_tradables', ["htc", "htcg", "hti", "htig", "ht"], ...
            'exports', ["ex"]);
    end
    
    outputTable = calculateRatiosByCategory(inputTable, s, config.country, categories);
end

function outputTable = calculateRatiosByCategory(baseTable, s, country, categories)
    outputTable = baseTable;
    fields = fieldnames(categories);
    
    for i = 1:length(fields)
        items = categories.(fields{i});
        for j = 1:length(items)
            aItem = items(j);
            price = getPriceForCategory(s, country, fields{i}, aItem);
            
            ratio = (s.(country).(aItem) * price) / (s.(country).py * s.(country).y);
            tempTable = table(ratio, ...
                'RowNames', country + "_" + aItem + "y", ...
                'VariableNames', {'ssValue'});
            outputTable = [outputTable; tempTable];
        end
    end
end

function price = getPriceForCategory(s, country, category, item)
    % Get price based on category
    switch category
        case 'non_tradables'
            price = s.(country).pnt;
        case 'home_tradables'
            price = s.(country).pht;
        case 'exports'
            price = s.(country).pex;
        otherwise
            price = s.(country).("p" + item);
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

function updateContent(paths, ssParamTable, config)
    % Update content with calculated values
    content = fileread(paths.inputFile);
    newContent = content;
    
    varsToReplace = getVariablesToReplace(config.modelFolder);
    for i = 1:length(varsToReplace)
        placeholder = ['#' varsToReplace{i} 'Value#'];
        value = sprintf('%.4f', ...
            ssParamTable{config.country + "_" + string(varsToReplace{i}), "ssValue"});
        newContent = regexprep(newContent, placeholder, value);
    end
    
    writeContent(paths.outputFile, newContent);
end

function vars = getVariablesToReplace(modelFolder)
    % Get variables to replace based on model
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

function validatePaths(paths)
    % Validate file paths
    requiredFiles = {paths.inputFile, paths.resultsFile};
    for i = 1:length(requiredFiles)
        if ~isfile(requiredFiles{i})
            error('EAGLE:FileNotFound', ...
                'Required file does not exist: %s', requiredFiles{i});
        end
    end
end

function writeContent(outputFile, content)
    % Write content to file
    [fid, errmsg] = fopen(outputFile, 'w');
    if fid == -1
        error('EAGLE:FileWriteError', ...
            'Failed to open output file: %s', errmsg);
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
    % Export to PNG
    [status, cmdout] = system(sprintf('mmdc -i %s -o %s', inputFile, outputFile))
    
    if status ~= 0
        error('EAGLE:ExportError', ...
            'Failed to export to PNG: %s', cmdout);
    end
end