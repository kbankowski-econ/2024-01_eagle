% Creates a LaTeX file for a table of monetary and fiscal policy parameters
function monetaryFiscalPolicy(envi, aStruct, fileName)
    % Default file name if none provided
    if nargin < 3
        fileName = 'policy.tex';
    end

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '\\begin{table}[htbp]\n');
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Fiscal policy specification.}\n');
    fprintf(fid, '    \\label{tab:policy}\n');
    fprintf(fid, '    \\begin{adjustbox}{width=\\textwidth}\n');
    fprintf(fid, '    \\small\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright\\arraybackslash}p{6.2cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '     & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '    \\hline\n');

    % Fiscal authority section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Expenditure}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Consumption tax rate', '\tau^{\text{C}}', "tauc", aStruct.ssValues));
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Taxation}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Consumption tax rate', '\tau^{\text{C}}', "tauc", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Dividend tax rate', '\tau^{\text{D}}', "taud", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Capital income tax rate', '\tau^{\text{K}}', "tauk", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Labor income tax rate', '\tau^{\text{N}}', "taun", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Rate of social security contribution by firms', '\tau^{\text{W}_{\text{f}}}', "tauwh", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Rate of social security contribution by households', '\tau^{\text{W}_{\text{h}}}', "tauwf", aStruct.ssValues));
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Fiscal rule}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Government debt-to-output ratio', '\overline{B}_{\text{Y}}', "by", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Sensitivity of lump-sum taxes to debt-to-output ratio', '\phi_{\text{BL}}', "phitb", aStruct.params));

    % Table footer
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '    \\end{tabular}\n');
    fprintf(fid, '    \\end{adjustbox}\n');
    fprintf(fid, '\\end{table}');

    % Close the file
    fclose(fid);
end