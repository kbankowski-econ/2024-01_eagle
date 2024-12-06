% Variables
inputFile = fullfile(project_path, 'aMyNotes/EAGLE_graph.md');
modelFolder = "eagleParsingTemp_sim_BIG1";


outputFile = fullfile(project_path, modelFolder, "modFiles", 'steady1-diagram.md');
qcValue = '19.2';

% Read the markdown file
content = fileread(inputFile);

% Replace using regular expression
newContent = regexprep(content, '#qcValue#', qcValue);

% Write to new file
fid = fopen(outputFile, 'w');
fprintf(fid, '%s', newContent);
fclose(fid);