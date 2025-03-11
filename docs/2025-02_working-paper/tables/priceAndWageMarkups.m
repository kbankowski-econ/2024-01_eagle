% Creates a LaTeX file for a table of price and wage markups with implied elasticities
function priceAndWageMarkups(envi, aStruct, fileName)
    % Default file name if none provided
    if nargin < 3
        fileName = 'markups_transposed.tex';
    end

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '\\begin{table}[htbp]\n');
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Price and wage markups (implied elasticities of substitution).}\n');
    fprintf(fid, '    \\label{tab:markups_transposed}\n');
    fprintf(fid, '    {\\small\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright\\arraybackslash}p{6.2cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '     & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '    \\hline\n');

    % Rows with markup and elasticity
    fprintf(fid, prepareMarkupLine(envi, 'Tradables', '\theta_{\text{T}}', "thetat", aStruct.params));
    fprintf(fid, prepareMarkupLine(envi, 'Nontradables', '\theta_{\text{N}}', "thetan", aStruct.params));
    fprintf(fid, prepareMarkupLine(envi, 'Wages', '\eta_{\text{I}}=\eta_{\text{J}}', "etai", aStruct.params));

    % Table footer
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '    \\end{tabular}\n');
    fprintf(fid, '    }\n');
    fprintf(fid, '\\end{table}');

    % Close the file
    fclose(fid);
end

% Helper function to prepare a line with markup and elasticity
function outputString = prepareMarkupLine(envi, varName, varSymbol, aField, aStruct)
    % Create arrays of markup and elasticity values from the structure
    markupValues = ones(1, length(envi.Meta.ctryList));
    elastValues = ones(1, length(envi.Meta.ctryList));
    for i = 1:length(envi.Meta.ctryList)
        elastField = envi.Meta.ctryList(i) + "_" + aField;
        elastValues(i) = aStruct.(elastField);
        markupValues(i) = elastValues(i)/(elastValues(i)-1);
    end
    
    % Build the core string with markup and elasticity in parentheses
    coreString = '';
    for i = 1:length(markupValues)
        coreString = [coreString, ' & %.2f (%.1f)'];
    end
    
    % Use sprintf with the format string and interleaved markup and elasticity values
    combinedValues = [markupValues; elastValues];
    outputString = sprintf(coreString, combinedValues(:)'); % Transpose to interleave correctly

    % Build the label string
    labelString = [varName, ' ($', varSymbol, '$)'];
    labelString = replace(labelString, '\', '\\'); % Double escape for printing
    outputString = ['\t', labelString, outputString, ' \\\\\n'];
end