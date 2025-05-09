function govBehaviour(envi, aStruct, fileName)

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Steady-state government ratios and tax rates (percent of GDP).}\n');
    fprintf(fid, '    \\label{tab:gov_ratios}\n');
    fprintf(fid, '    \\footnotesize\n');
    fprintf(fid, '    \\renewcommand{\\arraystretch}{1.2}\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright}p{5.5cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '        \\toprule\n');
    fprintf(fid, '         & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '        \\midrule\n');

    % Government expenditure section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Government expenditure}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Government consumption', '\overline{cgy}', "cgy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Government investment', '\overline{igy}', "igy", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Government transfers', '\overline{try}', "try", aStruct.ssValues, ' & %.1f', @(x) x*100));

    % Taxation section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Taxation}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Consumption tax rate', '\overline{\tau^{\text{C}}}', "tauc", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Labor income tax rate', '\overline{\tau^{\text{N}}}', "taun", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'SSC rate (employees)', '\overline{\tau^{\text{W}_h}}', "tauwh", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'SSC rate (employers)', '\overline{\tau^{\text{W}_f}}', "tauwf", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Dividend tax rate', '\overline{\tau^{\text{D}}}', "taud", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Capital income tax rate', '\overline{\tau^{\text{K}}}', "tauk", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Lump-sum tax-to-GDP ratio', '\overline{ty}', "ty", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Sensitivity of lump-sum taxes to debt', '\phi_{\text{B}_{\text{Y}}}', "phitb", aStruct.params, ' & %.1f'));

    % Budget section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Government budget balance and debt}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Budget balance-to-GDP ratio', '\overline{bb}', "bb", aStruct.ssValues, ' & %.1f', @(x) x*100));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryList, 'Government debt-to-GDP ratio', '\overline{by}', "by", aStruct.ssValues, ' & %.1f', @(x) x*100));

    % Table footer
    fprintf(fid, '        \\bottomrule\n');
    fprintf(fid, '    \\end{tabular}\n');

    % Close the file
    fclose(fid);
end
