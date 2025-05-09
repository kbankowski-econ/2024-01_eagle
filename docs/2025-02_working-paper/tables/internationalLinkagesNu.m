function internationalLinkagesNu(envi, aStruct, goodType, goodName)

    % Open file for writing
    utils.call.paths;
    filePath = fullfile(project_path, sprintf('docs/2025-02_working-paper/tables/internationalLinkagesNu_%s.tex', goodType));
    fid = fopen(filePath, 'w');

    % Table header
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{International linkages in %s: bias parameters.}\n', goodName);
    fprintf(fid, '    \\label{tab:linkages_%s}\n', lower(goodType));
    fprintf(fid, '    \\footnotesize\n');
    fprintf(fid, '    \\renewcommand{\\arraystretch}{1.2}\n');
    fprintf(fid, '    \\begin{tabular}{>{\\raggedright}p{5.5cm}*{14}{>{\\centering\\arraybackslash}p{0.8cm}}}\n');
    fprintf(fid, '        \\toprule\n');
    fprintf(fid, '         & %s \\\\\n', strjoin(envi.Meta.ctryList, ' & '));
    fprintf(fid, '        \\midrule\n');

    % Row label
    symbol = sprintf('\\nu_{\\text{%s}}^{\\text{H,CO}}', upper(goodType));
    fprintf(fid, '        \\multicolumn{15}{l}{\\textbf{Bias toward imported goods} ($%s$)} \\\\\n', symbol);

    % Table content: one row per exporting country
    paramName = "nu" + lower(goodType);
    for i = 1:numel(envi.Meta.ctryList)
        fprintf(fid, utils.prepareTableTradeLine(envi, char(envi.Meta.ctryList(i)), paramName, aStruct.params, ' & %.2f'));
    end

    % Table footer
    fprintf(fid, '        \\bottomrule\n');
    fprintf(fid, '    \\end{tabular}\n');

    % Close file
    fclose(fid);
end
