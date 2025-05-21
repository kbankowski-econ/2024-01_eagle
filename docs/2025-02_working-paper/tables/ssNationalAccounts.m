function ssNationalAccounts(envi, aStruct, fileName)

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Steady-state great ratios (percent of GDP).}\n');
    fprintf(fid, '    \\label{tab:national_accounts}\n');
    fprintf(fid, '    \\footnotesize\n');
    fprintf(fid, '    \\renewcommand{\\arraystretch}{1.2}\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright}p{5.5cm}*{14}{>{\\centering\\arraybackslash}p{1cm}}}\n');
    fprintf(fid, '        \\toprule\n');
    fprintf(fid, '         & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '        \\midrule\n');

    % Domestic demand section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Domestic demand}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Private consumption', '\overline{cy}', "cy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Gov. consumption', '\overline{cgy}', "cgy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Private investment', '\overline{iy}', "iy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Gov. investment', '\overline{igy}', "igy", aStruct.ssValues, ' & %.1f', @(x) x*100));

    % Trade section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Trade}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Imports (total)', '\overline{imy}', "imy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Exports (total)', '\overline{exy}', "exy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Trade balance', '\overline{tby}', "tby", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Net foreign assets', '\overline{B_Y^{*}}', "bfytarget", aStruct.params, ' & %.1f', @(x) x*100));

    % Production section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Production}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Tradables output', 'yst', "yst", aStruct.ssValues, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Non-tradables output', 'ysn', "ysn", aStruct.ssValues, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Labor', 'nd', "nd", aStruct.ssValues, ' & %.2f'));

    % Other section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Other}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Share of World GDP', 'size', "size", aStruct.params, ' & %.1f', @(x) x*100));

    % Table footer
    fprintf(fid, '        \\bottomrule\n');
    fprintf(fid, '    \\end{tabular}\n');

    % Close the file
    fclose(fid);
end
