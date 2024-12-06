% Define paths and names
modelFolder = "eagleParsingTemp_sim_BIG1";
aSteady = "steady1";
baseDir = fullfile(project_path, modelFolder, "modFiles");

% Define input/output files
inputFile = fullfile(project_path, 'aMyNotes/EAGLE_graph.md');
outputFile = fullfile(baseDir, aSteady + "-diagram.md");

% Load steady state results
resultsFile = fullfile(baseDir, aSteady, "Output", aSteady + "_results.mat");
modStruct = load(resultsFile);
ssTable = array2table(modStruct.oo_.steady_state, ...
    'RowNames', modStruct.M_.endo_names, ...
    'VariableNames', "ssValue");

% Define variables to replace
varsToReplace = {
    'cy'
    'cgy'
    'iy'
    'igy'
    'ynty'
    'yhty'
};

% Read content
content = fileread(inputFile);
newContent = content;

% Replace all variables
for i = 1:size(varsToReplace, 1)
    placeholder = ['#' varsToReplace{i} 'Value#'];
    value = sprintf('%.2f', ssTable{['EAB_', varsToReplace{i}], "ssValue"});
    newContent = regexprep(newContent, placeholder, value);
end

% Write output
fid = fopen(outputFile, 'w');
fprintf(fid, '%s', newContent);
fclose(fid);