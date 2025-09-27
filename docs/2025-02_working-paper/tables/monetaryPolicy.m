function monetaryPolicy(envi, aStruct, fileName)

    % Define country list with independent monetary policy
    ctryList = ["EA", "RU", "US", "RW"];

    % Open file for writing
    fid = fopen(fileName, 'w');

    % Table header
    fprintf(fid, '    \\centering\n');
    fprintf(fid, '    \\caption{Monetary policy parameters in countries/ regions with independent monetary policy.}\n');
    fprintf(fid, '    \\label{tab:MPpolicy}\n');
    fprintf(fid, '    \\footnotesize\n');
    fprintf(fid, '    \\renewcommand{\\arraystretch}{1.2}\n');
    fprintf(fid, '    \\begin{tabular}{lcccc}\n');
    fprintf(fid, '        \\toprule\n');
    fprintf(fid, '         & %s \\\\\n', strjoin(ctryList, ' & '));
    fprintf(fid, '        \\midrule\n');

    % Policy parameters
    % The monetary policy for the euro area is based on Germany with
    % differentials
    fprintf(fid, utils.prepareTableLine(["DE", "RU", "US", "RW"], 'Inflation target', '\Pi^{*}', "pi4target", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(ctryList, 'Interest rate inertia', '\phi_{\text{R}}', "phirr", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(ctryList, 'Sensitivity to inflation gap', '\phi_{\Pi}', "phirpi", aStruct.params, ' & %.2f'));
    fprintf(fid, utils.prepareTableLine(ctryList, 'Sensitivity to output growth', '\phi_{\text{gY}}', "phirgy", aStruct.params, ' & %.2f'));

    % Table footer
    fprintf(fid, '        \\bottomrule\n');
    fprintf(fid, '    \\end{tabular}\n');

    % Close the file
    fclose(fid);
end
