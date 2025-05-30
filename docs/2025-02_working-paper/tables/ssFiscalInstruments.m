function ssFiscalInstruments(envi, aStruct, fileName)

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Steady-state fiscal instruments (percent of GDP).}\n');
    fprintf(fid, '    \\label{tab:fiscal_instruments}\n');
    fprintf(fid, '    \\footnotesize\n');
    fprintf(fid, '    \\renewcommand{\\arraystretch}{1.2}\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright}p{5.5cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '        \\toprule\n');
    fprintf(fid, '         & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '        \\midrule\n');

    % Government spending
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Government spending}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Gov. consumption', '\overline{cgy}', "cgy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Gov. investment', '\overline{igy}', "igy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Transfers', '\overline{try}', "try", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Debt interest repayments', '\overline{bry}', "bry", aStruct.ssValues, ' & %.1f', @(x) x*100));

    % Government revenues
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Government revenues}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Consumption taxes', '\overline{tcy}', "tcy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Income taxes', '\overline{tny}', "tny", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Social contribution from employers', '\overline{twfy}', "twfy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Capital taxes', '\overline{tky}', "tky", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Lump sum taxes', '\overline{ty}', "ty", aStruct.ssValues, ' & %.1f', @(x) x*100));

    % Government balances
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Government balances}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Government revenues', '\overline{grevy}', "grevy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Government expenses', '\overline{gexpy}', "gexpy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Budget balance', '\overline{gbaly}', "gbaly", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Primary budget balance', '\overline{gpbaly}', "gpbaly", aStruct.ssValues, ' & %.1f', @(x) x*100));
    % Table footer
    fprintf(fid, '        \\bottomrule\n');
    fprintf(fid, '    \\end{tabular}\n');

    % Close the file
    fclose(fid);
end
