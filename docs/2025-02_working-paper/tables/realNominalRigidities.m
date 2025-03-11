% Creates a LaTeX file for a table of real and nominal rigidities
function realNominalRigidities(envi, aStruct, fileName)
    % Default file name if none provided
    if nargin < 3
        fileName = 'realNominalRigidities.tex';
    end

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '\\begin{table}[htbp]\n');
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Real and nominal rigidities.}\n');
    fprintf(fid, '    \\label{tab:rigidities}\n');
    fprintf(fid, '    {\\small\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright\\arraybackslash}p{6.2cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '     & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '    \\hline\n');

    % Adjustment costs section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Adjustment costs}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Imports of consumption goods', '\gamma_{\text{IMC}}', "gammaimc1", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Imports of investment goods', '\gamma_{\text{IMI}}', "gammaimi1", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Capital utilization', '\gamma_{\text{u2}}', "gammau2", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Investment', '\gamma_{\text{I}}', "gammai1", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Transaction cost function', '\gamma_{\text{v1}}', "gammav1", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, '\quad', '\gamma_{\text{v2}}', "gammav2", aStruct.params));
    
    % Special case: Intermediation cost function with ellipsis
    fprintf(fid, utils.prepareTableLine(envi, 'Intermediation cost function', '\gamma_{\text{B}^*}', "gammab1", aStruct.params));

    % Calvo parameters section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Calvo parameters}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Wages—households $I$ and $J$', '\xi_{\text{I}}$ and $\xi_{\text{J}}', "xii", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Prices—domestic tradables and nontradables', '\xi_{\text{H}}$) and nontradables ($\xi_{\text{N}}', "xin", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Prices—exports', '\xi_{\text{X}}', "xix", aStruct.params));

    % Degree of indexation section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Degree of indexation}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Wages—households $I$ and $J$', '\chi_{\text{I}}$ and $\chi_{\text{J}}', "chii", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Prices—domestic tradables and nontradables', '\chi_{\text{H}}$) and nontradables ($\chi_{\text{N}}', "chin", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Prices—exports', '\chi_{\text{X}}', "chix", aStruct.params));

    % Table footer
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '    \\end{tabular}\n');
    fprintf(fid, '    }\n');
    fprintf(fid, '\\end{table}');

    % Close the file
    fclose(fid);
end