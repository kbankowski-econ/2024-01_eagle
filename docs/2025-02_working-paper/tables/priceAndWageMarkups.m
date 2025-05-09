function priceAndWageMarkups(envi, aStruct, fileName)

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Price and wage markups (implied elasticities of substitution).}\n');
    fprintf(fid, '    \\label{tab:markups_transposed}\n');
    fprintf(fid, '    \\footnotesize\n');
    fprintf(fid, '    \\renewcommand{\\arraystretch}{1.2}\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright}p{5.5cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '        \\toprule\n');
    fprintf(fid, '         & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '        \\midrule\n');

    % Rows: markup and elasticity (shown together)
    fprintf(fid, prepareMarkupLine(envi, 'Goods (tradables)', '\theta_{\text{T}}', "thetat", aStruct.params));
    fprintf(fid, prepareMarkupLine(envi, 'Goods (nontradables)', '\theta_{\text{N}}', "thetan", aStruct.params));
    fprintf(fid, prepareMarkupLine(envi, 'Wages (I = J)', '\eta', "etai", aStruct.params));

    % Table footer
    fprintf(fid, '        \\bottomrule\n');
    fprintf(fid, '    \\end{tabular}\n');
    
    % Close the file
    fclose(fid);
end

function outputString = prepareMarkupLine(envi, varName, varSymbol, aField, aStruct)
    markupValues = nan(1, length(envi.Meta.ctryList));
    elastValues  = nan(1, length(envi.Meta.ctryList));

    for i = 1:length(envi.Meta.ctryList)
        field = envi.Meta.ctryList(i) + "_" + aField;
        try
            elast = aStruct.(field);
            elastValues(i) = elast;
            markupValues(i) = elast / (elast - 1);
        catch
            % leave NaN in case of missing data
        end
    end

    % Build formatted output line
    entryString = '';
    for i = 1:length(markupValues)
        if isnan(markupValues(i)) || isnan(elastValues(i))
            entryString = [entryString, ' & --'];
        else
            entryString = [entryString, sprintf(' & %.2f (%.1f)', markupValues(i), elastValues(i))];
        end
    end

    % Escape LaTeX and format label
    labelString = [varName, ' ($', varSymbol, '$)'];
    labelString = replace(labelString, '\', '\\');
    outputString = ['\t', labelString, entryString, ' \\\\\n'];
end
