% Creates a LaTeX file for a table of steady-state national accounts
function ssNationalAccounts(envi, aStruct, fileName)
    % Default file name if none provided
    if nargin < 3
        fileName = 'ssNationalAccounts.tex';
    end

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '\\begin{table}[htbp]\n');
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Steady-state national accounts (ratio to GDP, \\%%).}\n');
    fprintf(fid, '    \\label{tab:national_accounts}\n');
    fprintf(fid, '    {\\small\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright\\arraybackslash}p{6.2cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '     & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '    \\hline\n');

    % Domestic demand section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Domestic demand}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Private consumption', 'cy', "cy", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Private investment', 'iy', "iy", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Public consumption', 'cgy', "cgy", aStruct.ssValues));

    % Trade section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Trade}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Imports (total)', 'imy', "imy", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Imports of consumption goods', 'imcy', "imcy", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Imports of investment goods', 'imiy', "imiy", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Net foreign assets (ratio to annual GDP)', 'bfytarget', "bfytarget", aStruct.params));

    % Production section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Production}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Tradables', 'yst', "yst", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Nontradables', 'ysn', "ysn", aStruct.ssValues));
    fprintf(fid, utils.prepareTableLine(envi, 'Labor', 'nd', "nd", aStruct.ssValues));

    % Other section
    fprintf(fid, '    \\multicolumn{15}{l}{\\textbf{Other}} \\\\\n');
    fprintf(fid, utils.prepareTableLine(envi, 'Share of World GDP', 'size', "size", aStruct.params));

    % Table footer
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '    \\end{tabular}\n');
    fprintf(fid, '    }\n');
    fprintf(fid, '\\end{table}');

    % Close the file
    fclose(fid);
end