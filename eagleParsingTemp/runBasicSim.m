%% preamble
clear all; close all; clc; restoredefaultpath
% Add some paths
currentFolder = pwd; % Get current directory
[parentFolder, ~, ~] = fileparts(currentFolder);
addpath(genpath(parentFolder));

%% performing data transformation
fprintf('\n\n\n+++ Initialising the project ...\n');
% calling a specific user input not tracked by GIT
utils.call.paths;
% Call Iris
addpath(iris_path);
iris.startup
% Call Dynare
addpath(dynare_6_0);
dynare_config

%%
cd(fullfile(project_path, 'eagleParsingTemp','modFiles'));

dynare('steady0.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));

% calculating the steady state
if true
    dynare('steady1.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));
    dynare('steady2.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));
end

steady2output = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady2', 'Output', 'steady2_results.mat'));
steady2struct = struct();

for aParam = string(reshape(steady2output.M_.param_names, 1, []))
    steady2struct.params.(aParam) = steady2output.M_.params(strcmp(aParam, steady2output.M_.param_names));
end

varList = steady2output.M_.endo_names(~startsWith(steady2output.M_.endo_names, 'AUX_ENDO_'));
for aVar = string(reshape(varList, 1, []))
    steady2struct.ssValues.(aVar) = steady2output.oo_.steady_state(strcmp(aVar, varList));
end


% Specify the output file name
filename = fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'eagle_steady_govCo_stage0.txt');
% Open the file for writing
fileID = fopen(filename, 'w');
% Check if the file was opened successfully
if fileID == -1
    error('Failed to open the file.');
end
% Loop through each field in the structure
for aType = ["params", "ssValues"]
    fields = fieldnames(steady2struct.(aType));
    for i = 1:length(fields)
        % Get the field name
        fieldName = fields{i};
        % Get the value associated with the field
        fieldValue = steady2struct.(aType).(fieldName);
        % Write the field name and value to the file
        fprintf(fileID, '%s %f\n', fieldName, fieldValue);
    end
end
% Close the file
fclose(fileID);




dynare('steady3.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'));

    
dynare(sprintf('eagleModel_verSS'), sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'nopreprocessoroutput', 'savemacro');


% % shock simulation: 4-period g shock in EAB region
% dynare shock_eab_gy1.mod
% 
% eabGy1Databank = databank.fromArray(oo_.endo_simul', M_.endo_names, qq(0,4));
% serToPlot = (eabGy1Databank.EAB_gy-eabGy1Databank.EAB_gy(qq(0,4)))*100;
% plot(serToPlot{qq(1,1): qq(50,4)});
% title('EAB GY')
% ylabel('p.p. deviation from steady state')
% 
% % shock simulation: 4-period g shock in EAB region (with some nuanced shock
% % values)
% dynare shock_eab_gy2.mod
% 
% % shock simulation: productivity shock
% dynare shock_eab_tech.mod
% 
% % shock simulation: permanent productivity shock
% dynare shockperm_ea_techn.mod
% 
% % shock simulation: risk premium shock
% dynare ea_epsrp.mod
% 
% % shock simulation: risk premium shock
% dynare ea_epsrp.mod
% 
% % shock simulation: monetary policy shock
% dynare shock_ea_monpol.mod