% Sets up environment structure with metadata from JSON file
function environment = setup()
    utils.call.paths;  % Add project paths to MATLAB search path
    environment = struct();  % Create empty structure for environment
    % Read and decode Meta.json file from project path
    metaData = jsondecode(fileread(sprintf('%s/+environment/jsonFiles/Meta.json', project_path)));
    % Convert any cell arrays to string arrays in the structure
    environment.Meta = convertCellToStringStruct(metaData);
    % Merge with empty struct (allows for potential overrides)
    environment.Meta = hereDeepMerge(environment.Meta, struct());
    % import variable dictionary
    environment.varDict = importVarDict(project_path);
end

% Recursively merges two structures, with s2 taking precedence
function sOut = hereDeepMerge(s1, s2)
    % If either input isn't a struct, return s2
    if ~isstruct(s1) || ~isstruct(s2)
        sOut = s2;
        return
    end
    sOut = s1;  % Start with s1 as base structure
    f2 = fieldnames(s2);  % Get all field names from s2
    % Loop through s2 fields
    for i = 1:numel(f2)
        % If field exists in s1 and both are structs, merge recursively
        if isfield(s1, f2{i}) && isstruct(s1.(f2{i})) && isstruct(s2.(f2{i}))
            sOut.(f2{i}) = hereDeepMerge(s1.(f2{i}), s2.(f2{i}));
        % Otherwise, use s2's value
        else
            sOut.(f2{i}) = s2.(f2{i});
        end
    end
end

% Helper function to recursively convert cell arrays to horizontal string arrays in structs
function sOut = convertCellToStringStruct(sIn)
    sOut = sIn;
    if ~isstruct(sIn)
        if iscell(sIn)  % If input is a cell array, convert to horizontal string array
            sOut = string(sIn(:)');  % Force column to row vector with transpose
        end
        return
    end
    fields = fieldnames(sIn);
    for i = 1:numel(fields)
        % Recursively process each field
        if isstruct(sIn.(fields{i}))
            sOut.(fields{i}) = convertCellToStringStruct(sIn.(fields{i}));
        elseif iscell(sIn.(fields{i}))
            sOut.(fields{i}) = string(sIn.(fields{i})(:)');  % Force horizontal string array
        end
    end
end

function Table = importVarDict(project_path)

    fileName = sprintf('%s/+environment/csvFiles/varDict.csv', project_path); 
    
    opts = detectImportOptions(fileName, 'ReadRowNames', true,  'ReadVariableNames', true, 'Delimiter', ',');
    opts = setvartype( ...
        opts ...
        , {'description', 'diffTransf', 'diffDesc'}, 'string' ...
    );

    Table = readtable(fileName, opts);

end