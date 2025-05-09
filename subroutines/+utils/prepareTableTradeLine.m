function outputString = prepareTableTradeLine(envi, varName, aField, aStruct, aFormat, transfFunction)

    % We need a multiplication factor in case we would like to report numbers in percentages
    if nargin < 6 || isempty(transfFunction)
        transfFunction = @(x) x;
    end    

    % Create the array of values from the structure fields using country codes
    values = nan(1, length(envi.Meta.ctryList));  % Changed to ones instead of zeros
    for i = 1:length(envi.Meta.ctryList)
        fieldName = envi.Meta.ctryList(i) + varName + "_" + aField; % here country enters the variable
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
    labelString = replace(varName, '\', '\\'); % double escape characters for the printing function
    outputString = ['\t', labelString, outputString, ' \\\\\n'];
    
end