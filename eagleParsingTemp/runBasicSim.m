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

dynare('steady0.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% 
dynare('steady1.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
dynare('steady2.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
replaceInTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs.mod") ...
    , fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs_govCo.mod") ...
    , '@#include "modeqs_hhI.mod"' ...
    , '@#include "modeqs_hhI_govCons.mod"' ...
    , '@#include "modeqs_hhJ.mod"' ...
    , '@#include "modeqs_hhJ_govCons.mod"' ...    
);

% Define the new lines to append as a single string with the updated format
linesToAppend = [
    "var " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_ccesi @{co}_ccesj @{co}_dcci @{co}_dccj" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline + ...
    "parameters " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_mucces @{co}_nucces" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline
];

appendTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls.mod"), ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls_govCo.mod"), ...
    linesToAppend ...
);

steady2output = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady2', 'Output', 'steady2_results.mat'));
steady2struct = struct();

for aExoVar = string(reshape(steady2output.M_.exo_names, 1, []))
    steady2struct.exo_names.(aExoVar) = steady2output.oo_.exo_steady_state(strcmp(aExoVar, steady2output.M_.exo_names));
end

for aParam = string(reshape(steady2output.M_.param_names, 1, []))
    steady2struct.params.(aParam) = steady2output.M_.params(strcmp(aParam, steady2output.M_.param_names));
end
for aCountry = [ "EAA", "EAB", "EAC", "EAD", "EAE", "RW", "US" ]
    steady2struct.params.(aCountry+"_nucces") = 0.75;
    steady2struct.params.(aCountry+"_mucces") = 0.3;
end

varList = steady2output.M_.endo_names(~startsWith(steady2output.M_.endo_names, 'AUX_ENDO_'));
for aVar = string(reshape(varList, 1, []))
    steady2struct.ssValues.(aVar) = steady2output.oo_.steady_state(strcmp(aVar, varList));
end
for aCountry = [ "EAA", "EAB", "EAC", "EAD", "EAE", "RW", "US" ]
    steady2struct.ssValues.(aCountry+"_ccesi") = ((0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_ci")^(1-1/0.3)+(1-0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cg")^(1-1/0.3))^(1/(1-1/0.3));
    steady2struct.ssValues.(aCountry+"_ccesj") = ((0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cj")^(1-1/0.3)+(1-0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cg")^(1-1/0.3))^(1/(1-1/0.3));
    steady2struct.ssValues.(aCountry+"_dcci") = ((0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_ci")^(1-1/0.3)+(1-0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cg")^(1-1/0.3))^(1/(0.3-1))*(0.75^(1/0.3))*(steady2struct.ssValues.(aCountry+"_ci")^(-1/0.3));
    steady2struct.ssValues.(aCountry+"_dccj") = ((0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cj")^(1-1/0.3)+(1-0.75)^(1/0.3)*steady2struct.ssValues.(aCountry+"_cg")^(1-1/0.3))^(1/(0.3-1))*(0.75^(1/0.3))*(steady2struct.ssValues.(aCountry+"_cj")^(-1/0.3));

    %{
    % Steps to calculate SS utility
    % EAB_utilj = EAB_zcon*log(EAB_ccesj-EAB_kappa*EAB_ccesj(-1))-1/(1+EAB_zeta)*(EAB_nj)^(1+EAB_zeta)+EAB_beta*EAB_utilj(+1)
    % EAB_utilj - EAB_beta*EAB_utilj(+1) = EAB_zcon*log(EAB_ccesj-EAB_kappa*EAB_ccesj(-1))-1/(1+EAB_zeta)*(EAB_nj)^(1+EAB_zeta)
    % EAB_utilj - EAB_beta*EAB_utilj = EAB_zcon*log(EAB_ccesj-EAB_kappa*EAB_ccesj)-1/(1+EAB_zeta)*(EAB_nj)^(1+EAB_zeta)
    % EAB_utilj * (1-EAB_beta) = EAB_zcon*log(EAB_ccesj-EAB_kappa*EAB_ccesj)-1/(1+EAB_zeta)*(EAB_nj)^(1+EAB_zeta)
    % EAB_utilj = (EAB_zcon*log(EAB_ccesj-EAB_kappa*EAB_ccesj)-1/(1+EAB_zeta)*(EAB_nj)^(1+EAB_zeta))/(1-EAB_beta)
     
    
    steady2struct.ssValues.(aCountry+"_utili") = (steady2struct.ssValues.(aCountry+"_zcon")*log(steady2struct.ssValues.(aCountry+"_ccesi")-steady2struct.params.(aCountry+"_kappa")*steady2struct.ssValues.(aCountry+"_ccesi"))-1/(1+steady2struct.params.(aCountry+"_zeta"))*(steady2struct.ssValues.(aCountry+"_ni"))^(1+steady2struct.params.(aCountry+"_zeta")))/(1-steady2struct.params.(aCountry+"_beta"));
    steady2struct.ssValues.(aCountry+"_utilj") = (steady2struct.ssValues.(aCountry+"_zcon")*log(steady2struct.ssValues.(aCountry+"_ccesj")-steady2struct.params.(aCountry+"_kappa")*steady2struct.ssValues.(aCountry+"_ccesj"))-1/(1+steady2struct.params.(aCountry+"_zeta"))*(steady2struct.ssValues.(aCountry+"_nj"))^(1+steady2struct.params.(aCountry+"_zeta")))/(1-steady2struct.params.(aCountry+"_beta"));

    % Steps to calculate SS lambda
    % EAA_lambdai*(1+EAA_tauc+EAA_gammavi+EAA_vi*EAA_gammavider) = EAA_zcon*(EAA_ccesi-EAA_kappa*EAA_ccesi(-1))^(-EAA_sigma)*EAA_dcci;
    % EAA_lambdai = EAA_zcon*(EAA_ccesi-EAA_kappa*EAA_ccesi(-1))^(-EAA_sigma)*EAA_dcci/(1+EAA_tauc+EAA_gammavi+EAA_vi*EAA_gammavider);

    steady2struct.ssValues.(aCountry+"_lambdai") = steady2struct.ssValues.(aCountry+"_zcon")*(steady2struct.ssValues.(aCountry+"_ccesi")-steady2struct.params.(aCountry+"_kappa")*steady2struct.ssValues.(aCountry+"_ccesi"))^(-steady2struct.params.(aCountry+"_sigma"))*steady2struct.ssValues.(aCountry+"_dcci")/(1+steady2struct.ssValues.(aCountry+"_tauc")+steady2struct.ssValues.(aCountry+"_gammavi")+steady2struct.params.(aCountry+"_vi")*steady2struct.ssValues.(aCountry+"_gammavider"));
    steady2struct.ssValues.(aCountry+"_lambdaj") = steady2struct.ssValues.(aCountry+"_zcon")*(steady2struct.ssValues.(aCountry+"_ccesj")-steady2struct.params.(aCountry+"_kappa")*steady2struct.ssValues.(aCountry+"_ccesj"))^(-steady2struct.params.(aCountry+"_sigma"))*steady2struct.ssValues.(aCountry+"_dcci")/(1+steady2struct.ssValues.(aCountry+"_tauc")+steady2struct.ssValues.(aCountry+"_gammavj")+steady2struct.ssValues.(aCountry+"_vj")*steady2struct.ssValues.(aCountry+"_gammavjder"));
    %}

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
for aType = ["params", "ssValues", "exo_names"]
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

dynare('steady3.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
replaceInTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs_govCo.mod") ...
    , fullfile(project_path, "eagleParsingTemp", "submodules", "modeqs_govInv.mod") ...
    , '@#include "modeqs_Prod.mod"' ...
    , '@#include "modeqs_Prod_kg.mod"' ...
    , 'G7k4j7oU4boNLEKD' ...
    , '' ...    
);

% Define the new lines to append as a single string with the updated format
linesToAppend = [
    "var " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_kg" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline + ...
    "parameters " + newline + ...
    "    @#for co in countries" + newline + ...
    "        @{co}_alphag @{co}_deltag" + newline + ...
    "    @#endfor" + newline + ...
    ";" + newline
];

appendTextFile( ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls_govCo.mod"), ...
    fullfile(project_path, "eagleParsingTemp", "submodules", "symdecls_govInv.mod"), ...
    linesToAppend ...
);
%%
steady3output = load(fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'steady3', 'Output', 'steady3_results.mat'));
steady3struct = struct();

for aExoVar = string(reshape(steady3output.M_.exo_names, 1, []))
    steady3struct.exo_names.(aExoVar) = steady3output.oo_.exo_steady_state(strcmp(aExoVar, steady3output.M_.exo_names));
end
for aCountry = [ "EAA", "EAB", "EAC", "EAD", "EAE", "RW", "US" ]
end

for aParam = string(reshape(steady3output.M_.param_names, 1, []))
    steady3struct.params.(aParam) = steady3output.M_.params(strcmp(aParam, steady3output.M_.param_names));
end
for aCountry = [ "EAA", "EAB", "EAC", "EAD", "EAE", "RW", "US" ]
    steady3struct.params.(aCountry+"_deltag") = 0.025;
    steady3struct.params.(aCountry+"_alphag") = 0;
end

varList = steady3output.M_.endo_names(~startsWith(steady3output.M_.endo_names, 'AUX_ENDO_'));
for aVar = string(reshape(varList, 1, []))
    steady3struct.ssValues.(aVar) = steady3output.oo_.steady_state(strcmp(aVar, varList));
end
for aCountry = [ "EAA", "EAB", "EAC", "EAD", "EAE", "RW", "US" ]
    steady3struct.ssValues.(aCountry+"_kg") = steady3struct.ssValues.(aCountry+"_ig")/steady3struct.params.(aCountry+"_deltag");
end

% Specify the output file name
filename = fullfile(project_path, 'eagleParsingTemp', 'modFiles', 'eagle_steady_govInv_stage0.txt');
% Open the file for writing
fileID = fopen(filename, 'w');
% Check if the file was opened successfully
if fileID == -1
    error('Failed to open the file.');
end
% Loop through each field in the structure
for aType = ["params", "ssValues", "exo_names"]
    fields = fieldnames(steady3struct.(aType));
    for i = 1:length(fields)
        % Get the field name
        fieldName = fields{i};
        % Get the value associated with the field
        fieldValue = steady3struct.(aType).(fieldName);
        % Write the field name and value to the file
        fprintf(fileID, '%s %f\n', fieldName, fieldValue);
    end
end

% Close the file
fclose(fileID);

dynare('steady4.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%%
dynare('steady5.mod', sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'savemacro');

%% local functions
function replaceInTextFile(originalFileName, newFileName, replaceContent, newReplaceContent, replaceContent2, newReplaceContent2)
    
    % Read the content of the original file
    fileContent = fileread(originalFileName);
    
    % Replace the string
    newContent = strrep(fileContent, replaceContent, newReplaceContent);
    newContent = strrep(newContent, replaceContent2, newReplaceContent2);

    % Open the new file for writing
    fileID = fopen(newFileName, 'w');
    
    % Check if the file is open successfully
    if fileID == -1
        error('Failed to open file for writing.');
    end
    
    % Write the new content to the file
    fwrite(fileID, newContent);
    
    % Close the file
    fclose(fileID);

end

function appendTextFile(originalFileName, newFileName, linesToAppend)
    % Read the original file content
    fileContent = fileread(originalFileName);

    % Combine the original content with the new lines
    newContent = fileContent + linesToAppend;

    % Open the new file for writing
    fileID = fopen(newFileName, 'w');
    
    % Check if the file is open successfully
    if fileID == -1
        error('Failed to open file for writing.');
    end

    % Write the new content to the new file
    fprintf(fileID, '%s', newContent);

    % Close the file
    fclose(fileID);
end