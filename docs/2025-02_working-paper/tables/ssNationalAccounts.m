function ssNationalAccounts(envi, aStruct, fileName)

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Steady-state great ratios (percent of GDP).}\n');
    fprintf(fid, '    \\label{tab:national_accounts}\n');
    fprintf(fid, '    \\footnotesize\n');
    fprintf(fid, '    \\renewcommand{\\arraystretch}{1.2}\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright}p{5.5cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '        \\toprule\n');
    fprintf(fid, '         & %s \\\\\n', strjoin(envi.Meta.ctryListForReport, ' & '));
    fprintf(fid, '        \\midrule\n');

    % Domestic demand section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Domestic demand}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Private consumption', '\overline{cy}', "cy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Gov. consumption', '\overline{cgy}', "cgy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Private investment', '\overline{iy}', "iy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Gov. investment', '\overline{igy}', "igy", aStruct.ssValues, ' & %.1f', @(x) x*100));

    % Trade section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Trade}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Imports (total)', '\overline{imy}', "imy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Exports (total)', '\overline{exy}', "exy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Trade balance', '\overline{tby}', "tby", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Net foreign assets', '\overline{B_Y^{*}}', "bfytarget", aStruct.params, ' & %.0f', @(x) x*100));

    % Production section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Production}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Tradables output', 'yst', "yst", aStruct.ssValues, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Non-tradables output', 'ysn', "ysn", aStruct.ssValues, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Labor', 'nd', "nd", aStruct.ssValues, ' & %.2f'));

    % Other section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Other}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Share of World GDP', 'size', "size", aStruct.params, ' & %.1f', @(x) x*100));

    % Table footer
    fprintf(fid, '        \\bottomrule\n');
    fprintf(fid, '    \\end{tabular}\n');

    % Close the file
    fclose(fid);
end
