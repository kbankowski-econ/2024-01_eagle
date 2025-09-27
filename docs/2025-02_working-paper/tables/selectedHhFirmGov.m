function selectedHhFirmGov(envi, aStruct, fileName)

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Selected parameters: households, firms, and government.}\n');
    fprintf(fid, '    \\label{tab:selectedHhFirmGov}\n');
    fprintf(fid, '    \\footnotesize\n');
    fprintf(fid, '    \\renewcommand{\\arraystretch}{1.2}\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright}p{5.5cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '        \\toprule\n');
    fprintf(fid, '         & %s \\\\\n', strjoin(envi.Meta.ctryListForReport, ' & '));
    fprintf(fid, '        \\midrule\n');

    % Households
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Households}} \\\\\n');
    
    %//NOTE: the beta parameter is the following in the model 1.03^(-0.25)=0.9926
    %        similarly to other papers we report 1.03^(-0.25), which is a bit tricky in the paper
    betaEntry = repmat("1.03$^{-\frac{1}{4}}$", 1, numel(envi.Meta.ctryListForReport));
    fprintf(fid, '        Time discount factor ($\\beta$) & %s \\\\\n', strjoin(betaEntry, ' & '));

    %//NOTE: the inverse of the intertemporal elasticity of substitution: sigma (sigma > 0)
    %        the intertemporal elasticity of substitution (sigma^(-1))
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Intertemporal elasticity of subst.', '\sigma^{\text{-1}}', "sigma", aStruct.params, ' & %.2f', @(x) x^(-1)));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Inverse Frisch elasticity', '\zeta', "zeta", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Habit formation', '\kappa', "kappa", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Share of rule-of-thumb HH', '\omega', "omega", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Depreciation, private capital', '\delta', "delta", aStruct.params, ' & %.3f'));

    % Firms
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Intermediate-good firms}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Capital share, non-tradable sector', '\alpha_{\text{N}}', "alphan", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Capital share, tradable sector', '\alpha_{\text{T}}', "alphat", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Labor substitution, I/J types', '\eta', "eta", aStruct.params, ' & %.2f'));

    % Government
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Government}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Share gov. goods in utility', '\nu_{\text{CCES}}', "nucces", aStruct.params, ' & %.2f', @(x) 1 - x));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Gov./priv. cons. complementarity', '\mu_{\text{CCES}}', "mucces", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Depreciation, public capital', '\delta_{\text{G}}', "deltag", aStruct.params, ' & %.3f'));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Productivity, public capital', '\alpha_{\text{G}}', "alphag", aStruct.params, ' & %.2f'));

    % Table footer
    fprintf(fid, '        \\bottomrule\n');
    fprintf(fid, '    \\end{tabular}\n');

    % Close file
    fclose(fid);
end