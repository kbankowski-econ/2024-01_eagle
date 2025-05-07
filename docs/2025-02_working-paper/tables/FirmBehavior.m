% Creates a LaTeX file for a table of households and firms behavior
function FirmBehavior(envi, aStruct, fileName)
    % Default file name if none provided
    if nargin < 1
        fileName = 'FirmBehavior.tex';
    end

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '\\begin{table}[htbp]\n');
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Firms behavior.}\n');
    fprintf(fid, '    \\label{tab:FirmBehavior}\n');
    fprintf(fid, '    {\\small\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright\\arraybackslash}p{6.2cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '     & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '    \\hline\n');

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