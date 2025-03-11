% Creates a LaTeX file for a table of households and firms behavior
function hhAndFirmBehavior(envi, aStruct, fileName)
    % Default file name if none provided
    if nargin < 1
        fileName = 'hhAndFirmBehavior.tex';
    end

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '\\begin{table}[htbp]\n');
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Households and firms behavior.}\n');
    fprintf(fid, '    \\label{tab:hhAndFirmBehavior}\n');
    fprintf(fid, '    {\\small\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright\\arraybackslash}p{6.2cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '     & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '    \\hline\n');

    % Households section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Households}} \\\\\n');
    % Since the discount factor is with the exponent and the same for all countries, it is hard coded here.
    fprintf(fid, '    Discount factor ($\\beta$) & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} & \\begin{tabular}[c]{@{}c@{}}{1.03$^{-1}$}\\end{tabular} \\\\\n');    fprintf(fid, utils.prepareTableLine(envi, 'Inverse of the Frisch elasticity of labor', '\zeta', "zeta", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Habit persistence', '\kappa', "kappa", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Share of J-type households', '\omega', "omega", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Depreciation rate', '\delta', "delta", aStruct.params));

    % Intermediate-good firms section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Intermediate-good firms (trad. and nontrad. sectors)}} \\\\\n');
    % There is substitution btw. labor and capital in the table but it is always one in the C-D production function,
    % therefore specifying it is redundant
    % fprintf(fid, '    Substitution btw. labor and capital & 1.00 & 1.00 & 1.00 & 1.00 & 1.00 & 1.00 & 1.00 & 1.00 & 1.00 & 1.00 & 1.00 & 1.00 & 1.00 & 1.00 \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Bias towards capital', '\alpha_{\text{T}}$, $\alpha_{\text{N}}', "alphan", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Substitution btw. I-type and J-type labor', '\eta', "eta", aStruct.params));

    % Final consumption-good firms section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Final consumption-good firms}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Substitution btw. domestic and imported tradable goods', '\mu_{\text{TC}}', "mutc", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Bias towards domestic tradable goods', '\nu_{\text{TC}}', "nutc", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Substitution btw. tradables and nontradables', '\mu_{\text{C}}', "muc", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Bias towards tradable goods', '\nu_{\text{C}}', "nuc", aStruct.params));
    
    % Final investment-good firms section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Final investment-good firms}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Substitution btw. domestic and imported tradable goods', '\mu_{\text{TI}}', "muti", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Bias towards domestic tradable goods', '\nu_{\text{TI}}', "nuti", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Substitution btw. tradables and nontradables', '\mu_{\text{I}}', "mui", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Bias towards tradable goods', '\nu_{\text{I}}', "nui", aStruct.params));

    % Table footer
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '    \\end{tabular}\n');
    fprintf(fid, '    }\n');
    fprintf(fid, '\\end{table}');

    % Close the file
    fclose(fid);
end