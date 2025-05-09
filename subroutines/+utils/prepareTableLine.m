function outputString = prepareTableLine(ctryList, varName, varSymbol, aField, aStruct, aFormat, transfFunction)

    % an option to have a multiplying factor
    if nargin < 7 || isempty(transfFunction)
        transfFunction = @(x) x;
    end    

    % Create the array of values from the structure fields using country codes
    values = nan(1, length(ctryList));  % Changed to ones instead of zeros
    for i = 1:length(ctryList)
        fieldName = ctryList(i) + "_" + aField;
        try
            values(i) = transfFunction(aStruct.(fieldName));
        catch
        end
    end
    
    % Add format specifiers for each country
    coreString = '';
    for i = 1:length(values)
        coreString = [coreString, aFormat];
    end
    % Use sprintf with the format string and unpacked values array
    outputString = sprintf(coreString, values);
    % Replace NaN with -- so that missing values look better in the latex
    % tables
    outputString = strrep(outputString, 'NaN', '--');

    % Start building the format string with the tab and labels
    labelString = [varName,' ($', varSymbol, '$)'];
    labelString = replace(labelString, '\', '\\'); % double escape characters for the printing function
    outputString = ['\t', labelString, outputString, ' \\\\\n'];
    
end