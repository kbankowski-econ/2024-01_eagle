% Define country and item arrays
ctryList = ["RA", "AT", "BE", "ES", "FI", "FR", "GR", "IT", "NL", "PT", "DE", "RU", "RW", "US"];
itemListShares = ["public_consumption", "private_consumption", "private_investment", "public_investment"];
itemModelListShares = ["cgybar", "cy", "iy", "igybar"];
itemListTaxRates = ["consumption", "income", "SSC_firms", "SSC_households", "capital"];
itemModelListTaxRates = ["taucbar", "taunbar", "tauwfbar", "tauwhbar", "taukbar"];
itemModelListDebt = ["bytarget"]

% import values for calibration
importCalibValues(ctryList, itemListShares, itemModelListShares, "shares");
importCalibValues(ctryList, itemListTaxRates, itemModelListTaxRates, "tax_rates");
importCalibValues(ctryList, itemModelListDebt, itemModelListDebt, "debt");

%% Local function
function importCalibValues(ctryList, itemList, itemModelList, valueCalibType)

    % reading parameters
    utils.call.paths;

    % Load shares from CSV
    csvFileName = fullfile(project_path_io, "databases/tables/oecd/eu", valueCalibType + ".csv");
    shareTable = readtable(csvFileName, 'ReadRowNames', true);
    
    % Convert table to structure
    shareStructure = struct();
    for j = 1:numel(itemList)
        item = itemList(j);
        shareStructure.(item) = struct();
        for i = 1:numel(ctryList)
            shareStructure.(item).(ctryList(i)) = shareTable{item, ctryList(i)};
        end
    
        % Export public consumption shares
        exportShareStructure(shareStructure.(itemList(j)), itemModelList(j), ctryList, valueCalibType);
    end

end

function exportShareStructure(shareStructure, aItem, ctryList, valueCalibType)
    % Export structure to text file in format: fieldname, value;
    utils.call.paths;
    
    % Prepare filename and open file
    filename = fullfile(project_path, 'eagleParsingTemp/modFiles', sprintf('%s_%s.mod', char(valueCalibType), aItem));
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