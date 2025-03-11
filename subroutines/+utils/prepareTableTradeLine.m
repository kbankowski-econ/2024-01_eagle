function outputString = prepareTableTradeLine(envi, varName, aField, aStruct)

    % Create the array of values from the structure fields using country codes
    values = nan(1, length(envi.Meta.ctryList));  % Changed to ones instead of zeros
    for i = 1:length(envi.Meta.ctryList)
        fieldName = envi.Meta.ctryList(i) + varName + "_" + aField; % here country enters the variable
        try
            values(i) = aStruct.(fieldName);
        catch
        end
    end
    
    % Format
    aFormat = ' & %.2f';

    % Add format specifiers for each country
    coreString = '';
    for i = 1:length(values)
        coreString = [coreString, aFormat];
    end
    % Use sprintf with the format string and unpacked values array
    outputString = sprintf(coreString, values);

    % Start building the format string with the tab and labels
    labelString = replace(varName, '\', '\\'); % double escape characters for the printing function
    outputString = ['\t', labelString, outputString, ' \\\\\n'];
    
end