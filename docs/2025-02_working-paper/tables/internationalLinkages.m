% Creates a LaTeX file for a table of international linkages (tradable bundles)
function internationalLinkages(envi, aStruct, goodType, goodName)

    % Open file for writing
    utils.call.paths;
    fid = fopen(fullfile(project_path, sprintf('docs/2025-02_working-paper/tables/internationalLinkages_%s.tex', goodType)), 'w');

    % Table header
    fprintf(fid, '\\begin{table}[htbp]\n');
    fprintf(fid, '    \\centering\n');
    fprintf(fid, ['    \\caption{International linkages, ', char(goodName),' (parameters of tradable bundles).}\n']);
    fprintf(fid, '    \\label{tab:linkages}\n');
    fprintf(fid, '    {\\small\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright\\arraybackslash}p{6.2cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '     & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '    \\hline\n');

    % Consumption-good imports section
    fprintf(fid, utils.prepareTableLine(envi, 'Substitution btw. consumption good imports', ['\mu_{\text{', char(goodType),'}}'], "mumc", aStruct.params));

    % Bias towards imported consumption goods
    fprintf(fid, ['    \\multicolumn{15}{l}{\\textbf{Bias towards imported goods from} ($\\nu_{\\text{', char(goodType),'}}^{\\text{H,CO}}$)} \\\\\n']);

    paramName = "nu" + lower(goodType);
    for i = 1:numel(envi.Meta.ctryList)
        fprintf(fid, utils.prepareTableTradeLine(envi, char(envi.Meta.ctryList(i)), paramName, aStruct.params));
    end

    % Table footer
    fprintf(fid, '    \\hline\n');
    fprintf(fid, '    \\end{tabular}\n');
    fprintf(fid, '    }\n');
    fprintf(fid, '    \\vspace{2ex}\n');
    fprintf(fid, '    \\desc{Countries listed in the column headers are the importing countries $(H)$. Countries listed in the row labels are the countries of import origin $(CO)$ - exporting countries.}\n');
    fprintf(fid, '\\end{table}');

    % Close the file
    fclose(fid);
end

