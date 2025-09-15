function internationalLinkagesShare(envi, aStruct, goodType, goodName)

    % Open file for writing
    utils.call.paths;
    fid = fopen(fullfile(project_path, sprintf('docs/2025-02_working-paper/tables/internationalLinkagesShare_%s.tex', goodType)), 'w');

    % Table header
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{International linkages in %s (percent of GDP).}\n', goodName);
    fprintf(fid, '    \\label{tab:linkagesShare_%s}\n', lower(goodType));
    fprintf(fid, '    \\footnotesize\n');
    fprintf(fid, '    \\renewcommand{\\arraystretch}{1.2}\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright}p{5.5cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '        \\toprule\n');
    fprintf(fid, '         & %s \\\\\n', strjoin(envi.Meta.ctryListForReport, ' & '));
    fprintf(fid, '        \\midrule\n');

    % Total imports for the given good type
    varSymbol = sprintf('\\overline{\\text{i%sy}}', lower(goodType));
    fieldName = sprintf('i%sy', lower(goodType));
    fprintf(fid, utils.prepareTableLine(envi.Meta.ctryListForReport, 'Total imports', varSymbol, fieldName, aStruct.ssValues, ' & %.1f', @(x) x*100));

    % Bilateral imports section
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Bilateral imports} ($%s^{\\text{H,CO}}$)} \\\\\n', varSymbol);

    % Print one row for each exporting country (row index), values by importing country (column index)
    paramName = sprintf('i%sy', lower(goodType));
    for i = 1:numel(envi.Meta.ctryListForReport)
        fprintf(fid, utils.prepareTableTradeLine(envi, char(envi.Meta.ctryListForReport(i)), paramName, aStruct.ssValues, ' & %.2f', @(x) x*100));
    end

    % Table footer
    fprintf(fid, '        \\bottomrule\n');
    fprintf(fid, '    \\end{tabular}\n');
    fprintf(fid, '    \\vspace{1ex}\n');
    
    % Close the file
    fclose(fid);
end
