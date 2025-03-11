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
    fprintf(fid, '    \\caption{Monetary and fiscal policy.}\n');
    fprintf(fid, '    \\label{tab:policy}\n');
    fprintf(fid, '    {\\small\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright\\arraybackslash}p{6.2cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '     & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '    \\hline\n');

    % Monetary authority section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Monetary authority}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Inflation target', '\Pi^{*}', "pi4target", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Interest rate inertia', '\phi_{\text{R}}', "phirr", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Interest rate sensitivity to inflation gap', '\phi_{\Pi}', "phirpi", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Interest rate sensitivity to output growth', '\phi_{\text{gY}}', "phirgy", aStruct.params));

    % Fiscal authority section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Fiscal authority}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Government debt-to-output ratio', '\overline{B}_{\text{Y}}', "by", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Sensitivity of lump-sum taxes to debt-to-output ratio', '\phi_{\text{BL}}', "phitb", aStruct.params));
    fprintf(fid, utils.prepareTableLine(envi, 'Consumption tax rate', '\tau^{\text{C}}', "tauc", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Dividend tax rate', '\tau^{\text{D}}', "taud", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Capital income tax rate', '\tau^{\text{K}}', "tauk", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Labor income tax rate', '\tau^{\text{N}}', "taun", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Rate of social security contribution by firms', '\tau^{\text{W}_{\text{f}}}', "tauwh", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Rate of social security contribution by households', '\tau^{\text{W}_{\text{h}}}', "tauwf", aStruct.ssValues));

    % Table footer
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '    \\end{tabular}\n');
    fprintf(fid, '    }\n');
    fprintf(fid, '\\end{table}');

    % Close the file
    fclose(fid);
end