function outputString = prepareTableLine(envi, varName, varSymbol, aField, aStruct)

    % Create the array of values from the structure fields using country codes
    values = nan(1, length(envi.Meta.ctryList));  % Changed to ones instead of zeros
    for i = 1:length(envi.Meta.ctryList)
        fieldName = envi.Meta.ctryList(i) + "_" + aField;
        try
            values(i) = aStruct.(fieldName);
        catch
        end
    end
    
    % Differentiate formatting for some variables
    if ismember(aField, {'delta', 'size'})
        aFormat = ' & %.3f';
    elseif ismember(aField, {'gammau2'})
        aFormat = ' & %.0f';        
    else
        aFormat = ' & %.2f';
    end

    % Add format specifiers for each country
    coreString = '';
    for i = 1:length(values)
        coreString = [coreString, aFormat];
    end
    % Use sprintf with the format string and unpacked values array
    outputString = sprintf(coreString, values);

    % Start building the format string with the tab and labels
    labelString = [varName,' ($', varSymbol, '$)'];
    labelString = replace(labelString, '\', '\\'); % double escape characters for the printing function
    outputString = ['\t', labelString, outputString, ' \\\\\n'];
    
end