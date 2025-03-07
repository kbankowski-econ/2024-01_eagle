% Define country and item arrays
ctryList = ["RA", "AT", "BE", "ES", "FI", "FR", "GR", "IT", "NL", "PT", "DE", "RU", "RW", "US"];
ctry3LetterList = ["REA", "AUT", "BEL", "ESP", "FIN", "FRA", "GRC", "ITA", "NLD", "PRT", "DEU", "REU", "RoW", "USA"];
itemList = ["public_consumption", "private_consumption", "investment"];

% Load shares from CSV
csvFileName = fullfile(project_path_io, "databases/tables/oecd/eu", "shares.csv");
shareTable = readtable(csvFileName, 'ReadRowNames', true);

% Convert table to structure
shareStructure = struct();
for j = 1:numel(itemList)
    item = itemList(j);
    shareStructure.(item) = struct();
    for i = 1:numel(ctryList)
        shareStructure.(item).(ctryList(i)) = shareTable{item, ctry3LetterList(i)};
    end
end

% Export public consumption shares
exportShareStructure(shareStructure.public_consumption, 'cgybar', ctryList);

%% Local function
function exportShareStructure(shareStructure, aItem, ctryList)
    % Export structure to text file in format: fieldname, value;
    utils.call.paths;
    
    % Prepare filename and open file
    filename = fullfile(project_path, 'eagleParsingTemp/modFiles', sprintf('shares_%s.mod', aItem));
    fileID = fopen(filename, 'w');
    
    % Write data to file
    for i = 1:length(ctryList)
        country = ctryList(i);
        fprintf(fileID, '%s_%s, %.4f;\n', country, aItem, shareStructure.(country));
    end
    
    % Close file and display confirmation
    fclose(fileID);
    fprintf('Successfully exported share structure to %s\n', filename);
end