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

    
dynare(sprintf('eagleModel_verSS'), sprintf('-I%s/%s/submodules', project_path, 'eagleParsingTemp'), 'nopreprocessoroutput', 'savemacro');

log(steady2struct.ssValues.EAA_zt) = (1-steady2struct.ssValues.EAA_rhozt)*log(steady2struct.params.EAA_ztbar)+EAA_rhozt*log(steady2struct.ssValues.EAA_zt)+EAA_epszt;


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