% Variables
inputFile = fullfile(project_path, 'aMyNotes/EAGLE_graph.md');
modelFolder = "eagleParsingTemp_sim_BIG1";

aSteady = "steady1";
outputFile = fullfile(project_path, modelFolder, "modFiles", aSteady + "-diagram.md");

modStruct = load(fullfile(project_path, modelFolder, "modFiles", aSteady, "Output", aSteady + "_results.mat"));
ssTable = array2table(modStruct.oo_.steady_state, 'RowNames', modStruct.M_.endo_names, 'VariableNames', "ssValue");

qcValue = ssTable{"EAB_cy", "ssValue"};
qcgValue = ssTable{"EAB_cgy", "ssValue"};
qiValue = ssTable{"EAB_iy", "ssValue"};
qigValue = ssTable{"EAB_igy", "ssValue"};
yntyValue = ssTable{"EAB_ynty", "ssValue"};
yhtyValue = ssTable{"EAB_yhty", "ssValue"};

% Read the markdown file
content = fileread(inputFile);

% Replace using regular expression
newContent = regexprep(content, '#qcValue#', sprintf('%.2f', qcValue));
newContent = regexprep(newContent, '#qcgValue#', sprintf('%.2f', qcgValue));
newContent = regexprep(newContent, '#qiValue#', sprintf('%.2f', qiValue));
newContent = regexprep(newContent, '#qigValue#', sprintf('%.2f', qigValue));
newContent = regexprep(newContent, '#yntyValue#', sprintf('%.2f', yntyValue));
newContent = regexprep(newContent, '#yhtyValue#', sprintf('%.2f', yhtyValue));

% Write to new file
fid = fopen(outputFile, 'w');
fprintf(fid, '%s', newContent);
fclose(fid);