function realNominalRigidities(envi, aStruct, fileName)

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Real and nominal rigidities.}\n');
    fprintf(fid, '    \\label{tab:rigidities}\n');
    fprintf(fid, '    \\footnotesize\n');
    fprintf(fid, '    \\renewcommand{\\arraystretch}{1.2}\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright}p{6.9cm}*{14}{>{\\centering\\arraybackslash}p{0.7cm}}}\n');
    fprintf(fid, '        \\toprule\n');
    fprintf(fid, '         & %s \\\\\n', strjoin(envi.Meta.ctryListForReport, ' & '));
    fprintf(fid, '        \\midrule\n');

    % Adjustment costs

    %//NOTES: are we explaining all adjustment costs?
    %         there are 9 gamma paramaters for each country (8 for the US, the US does not have gammab1)
    %         AT_gammai1
    %         AT_gammau2
    %         AT_gammav1
    %         AT_gammav2
    %         AT_gammab1
    %         AT_gammaimc1
    %         AT_gammaimi1
    %         AT_gammaimcg1
    %         AT_gammaimig1

    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Adjustment costs}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Investment adj. cost', '\gamma_{\text{I}}', "gammai1", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Capital utilization', '\gamma_{\text{u2}}', "gammau2", aStruct.params, ' & %.0f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Transaction cost (level)', '\gamma_{\text{v1}}', "gammav1", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Transaction cost (curvature)', '\gamma_{\text{v2}}', "gammav2", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Intermediation cost', '\gamma_{\text{B}^*}', "gammab1", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Imports (priv. cons.)', '\gamma_{\text{IMC}}', "gammaimc1", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Imports (priv. inv.)', '\gamma_{\text{IMI}}', "gammaimi1", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Imports (gov. cons.)', '\gamma_{\text{IMCG}}', "gammaimcg1", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Imports (gov. inv.)', '\gamma_{\text{IMIG}}', "gammaimig1", aStruct.params, ' & %.2f'));

    % Calvo parameters
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Calvo parameters}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Wages (I and J households)', '\xi_{\text{I}}$ and $\xi_{\text{J}}', "xii", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Prices (dom. trad./nontrad.)', '\xi_{\text{H}}$ and $\xi_{\text{N}}', "xin", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Prices (exports)', '\xi_{\text{X}}', "xix", aStruct.params, ' & %.2f'));

    % Degree of indexation
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Degree of indexation}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Wages (I and J households)', '\chi_{\text{I}}$ and $\chi_{\text{J}}', "chii", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Prices (dom. trad./nontrad.)', '\chi_{\text{H}}$ and $\chi_{\text{N}}', "chin", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Prices (exports)', '\chi_{\text{X}}', "chix", aStruct.params, ' & %.2f'));

    % Table footer
    fprintf(fid, '        \\bottomrule\n');
    fprintf(fid, '    \\end{tabular}\n');

    % Close the file
    fclose(fid);
end
