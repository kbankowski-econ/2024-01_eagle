
% steady state in the matfile contains homothopy values after the EAB has
% been calibrated only
load(sprintf("%s/eagleParsingTemp/modFiles/steady2a/Output/steady2a_results.mat", project_path));

%% loading the homothopy values from mod files
[paramIdentif, valuesEnd] = readHomothopyValuesFromModFile('tradeMatrixFabio.mod', M_);

%% running steady command
% creating the matrix containing the homothopy values
% first a placeholder
options_.homotopy_values = NaN(length(valuesEnd), 4);
% column 1 with 4 value specifying that this is a parameter
options_.homotopy_values(:, 1) = 4;
% column 2 with identifiers for parameters
options_.homotopy_values(:, 2) = paramIdentif;
% column 3 with initial values left unchanged with NaN 
% column 4 with end values spedified in line with trade matrix
options_.homotopy_values(:, 4) = valuesEnd;

% some options for solution
options_.homotopy_steps = 15;
options_.steady.maxit = 20;

% Running steady state and saving it
logname_ = 'steady2b.log';
if exist(logname_, 'file')
    delete(logname_)
end
diary(logname_)

% Start the timer
tic;
% Executing steady function
steady();
% Stop the timer and get the elapsed time
elapsed_time = toc;

reportTimeToLogFile(logname_, elapsed_time);
save_params_and_steady_state('eagle_steady_stage2b.txt');

%% trying the see the failed resutls
ssTable = table(); ssStruct = struct();

ssTable = array2table(oo_.steady_state, 'RowNames', M_.endo_names, 'VariableNames', "ss");
ssStruct = cell2struct(num2cell(ssTable.ss), ssTable.Properties.RowNames, 1);
paramStruct = cell2struct(num2cell(M_.params), M_.param_names, 1);
xlsFilePath = fullfile(project_path, "aMyNotes/investigCloseLookTradeBalance.xlsx");

% alocate the values from the structure
countries = ["EAA", "EAB", "EAC", "EAD", "EAE", "EAF", "EAG", "EAH", "EAI", "EAJ", "EAK", "EAL", "RW", "US"];
shiftAmount = 12;  % Making the shift amount explicit as a variable
countriesAux = [countries, countries];  % Double array for circular indexing

rangeMatrix = "Q"+["3", "21", "39", "57", "93"];
rangeStruct = struct('imcy', rangeMatrix(1), 'imcgy', rangeMatrix(2), 'imiy', rangeMatrix(3), 'imigy', rangeMatrix(4), 'rer', rangeMatrix(5));

rangeFlatMatrix = "Q"+["110", "114", "122", "127"];
rangeFlatStruct = struct('y', rangeFlatMatrix(1), 'py', rangeFlatMatrix(2), 'size', rangeFlatMatrix(3), 'pex', rangeFlatMatrix(4));


for aItem = ["imcy", "imcgy", "imiy", "imigy", "rer"]
    tableForXls.(aItem) = array2table(nan(length(countries), length(countries)), 'RowNames', countries, 'VariableNames', countries);
    for i = 1:length(countries)
        aCtry1 = countries(i);
        % Get residual country with circular indexing
        aCtryResid = countriesAux(i + shiftAmount);
        validCountries = countries ~= aCtry1;
        for aCtry2 = countries(validCountries)
            try
                tableForXls.(aItem){aCtry2, aCtry1} = paramStruct.(aCtry1+aCtry2+"_"+aItem);
            catch
                tableForXls.(aItem){aCtry2, aCtry1} = ssStruct.(aCtry1+aCtry2+"_"+aItem);
            end
        end
        if ~strcmp(aItem, "rer")
            tableForXls.(aItem){"Total", aCtry1} = paramStruct.(aCtry1+"_"+aItem);
        end
    end
    writetable(tableForXls.(aItem), xlsFilePath, 'Sheet', 'shareCalc', 'Range', rangeStruct.(aItem), 'WriteRowNames', true, 'WriteVariableNames', true);
end


for aItem = ["y", "py", "size", "pex"]
    tableFlatForXls.(aItem) = array2table(nan(1, length(countries)), 'VariableNames', countries, 'RowNames', {'Row'});
    for i = 1:length(countries)
        aCtry1 = countries(i);
        try
            tableFlatForXls.(aItem){"Row", aCtry1} = paramStruct.(aCtry1+"_"+aItem);
        catch
            tableFlatForXls.(aItem){"Row", aCtry1} = ssStruct.(aCtry1+"_"+aItem);
        end
    end
    writetable(tableFlatForXls.(aItem), xlsFilePath, 'Sheet', 'shareCalc', 'Range', rangeFlatStruct.(aItem), 'WriteRowNames', true, 'WriteVariableNames', true);
end

%%
rangeMatrix = "AH"+["131", "148", "165", "182", "199"];
rangeStruct = struct('imc', rangeMatrix(1), 'imcg', rangeMatrix(2), 'imi', rangeMatrix(3), 'imig', rangeMatrix(4), 'im', rangeMatrix(5));

for aItem = ["imc", "imcg", "imi", "imig", "im"]
    tableForXls.(aItem) = array2table(nan(length(countries), length(countries)), 'RowNames', countries, 'VariableNames', countries);
    for i = 1:length(countries)
        aCtry1 = countries(i);
        % Get residual country with circular indexing
        aCtryResid = countriesAux(i + shiftAmount);
        validCountries = countries ~= aCtry1;
        for aCtry2 = countries(validCountries)
            try
                tableForXls.(aItem){aCtry2, aCtry1} = paramStruct.(aCtry1+aCtry2+"_"+aItem);
            catch
                tableForXls.(aItem){aCtry2, aCtry1} = ssStruct.(aCtry1+aCtry2+"_"+aItem);
            end
        end
    end
    writetable(tableForXls.(aItem), xlsFilePath, 'Sheet', 'EAA-recomp', 'Range', rangeStruct.(aItem), 'WriteRowNames', true, 'WriteVariableNames', true);
end

%%
US_ex = ssStruct.US_pex*paramStruct.EAA_size/paramStruct.US_size*ssStruct.EAAUS_im+ssStruct.US_pex*paramStruct.EAB_size/paramStruct.US_size*ssStruct.EABUS_im+ssStruct.US_pex*paramStruct.EAC_size/paramStruct.US_size*ssStruct.EACUS_im+ssStruct.US_pex*paramStruct.EAD_size/paramStruct.US_size*ssStruct.EADUS_im+ssStruct.US_pex*paramStruct.EAE_size/paramStruct.US_size*ssStruct.EAEUS_im+ssStruct.US_pex*paramStruct.EAF_size/paramStruct.US_size*ssStruct.EAFUS_im+ssStruct.US_pex*paramStruct.EAG_size/paramStruct.US_size*ssStruct.EAGUS_im+ssStruct.US_pex*paramStruct.EAH_size/paramStruct.US_size*ssStruct.EAHUS_im+ssStruct.US_pex*paramStruct.EAI_size/paramStruct.US_size*ssStruct.EAIUS_im+ssStruct.US_pex*paramStruct.EAJ_size/paramStruct.US_size*ssStruct.EAJUS_im+ssStruct.US_pex*paramStruct.EAK_size/paramStruct.US_size*ssStruct.EAKUS_im+ssStruct.US_pex*paramStruct.EAL_size/paramStruct.US_size*ssStruct.EALUS_im+ssStruct.US_pex*paramStruct.RW_size/paramStruct.US_size*ssStruct.RWUS_im
US_exy = US_ex/(ssStruct.US_y*ssStruct.US_py)
US_tby = US_exy - ssStruct.US_imy
ssStruct.US_tby - US_tby


%%
tableTby = table();
for aItem = ["tby"]
    tableTby = array2table(nan(1, length(countries)), 'VariableNames', countries);
    for i = 1:length(countries)
        aCtry1 = countries(i);
            tableTby{:, aCtry1} = ssStruct.(aCtry1+"_"+aItem);
    end
end

openvar tableTby








%% value of EAB_nutc goes to zero, which is potentially a problem
% (1) by looking at the below equation this means that imports appraoch
% tradables
% EAB_ttc^((EAB_mutc-1)/EAB_mutc) = (EAB_nutc)^(1/EAB_mutc)*EAB_htc^(1-1/EAB_mutc)+(1-EAB_nutc)^(1/EAB_mutc)*EAB_imc^(1-1/EAB_mutc);
% S.EAB_ttc^((S.EAB_mutc-1)/S.EAB_mutc) = (S.EAB_nutc)^(1/S.EAB_mutc)*S.EAB_htc^(1-1/S.EAB_mutc)+(1-S.EAB_nutc)^(1/S.EAB_mutc)*S.EAB_imc^(1-1/S.EAB_mutc);
% and tradables most likely apprach total consumption, which is bound by
% the calibrated ratio
% EAB_qc^((EAB_muc-1)/EAB_muc) = (EAB_nuc)^(1/EAB_muc)*EAB_ttc^(1-1/EAB_muc)+(1-EAB_nuc)^(1/EAB_muc)*EAB_ntc^(1-1/EAB_muc);
% S.EAB_qc^((S.EAB_muc-1)/S.EAB_muc) = (S.EAB_nuc)^(1/S.EAB_muc)*S.EAB_ttc^(1-1/S.EAB_muc)+(1-S.EAB_nuc)^(1/S.EAB_muc)*S.EAB_ntc^(1-1/S.EAB_muc)

% saving S structure and checking my hypothesis
S = struct();
for i = 1:height(T)
    S.(T(i, :).Properties.RowNames{:}) = T{i, "failed"};
end
for i = 1:length(M_.param_names)
    S.(M_.param_names{i}) = M_.params(i);
end
S.EAB_imc
% ans =
% 
%     0.6116
S.EAB_ttc
% ans =
% 
%     0.6125
S.EAB_qc
% ans =
% 
%     1.4619
S.EAB_c
% ans =
% 
%     1.4617

% Below is the maximum that can be reached; and we are pushing it to 30%;
% no way this will work
EAB_imcy = S.EAB_pimc*S.EAB_imc/(S.EAB_py*S.EAB_y);
% ans =
% 
%     0.2695
S.EAB_cy % 0.5581
S.EAB_qc/(S.EAB_py*S.EAB_y) % 0.5582 (0.2698 + 0.2884)
S.EAB_ttc*S.EAB_pttc/(S.EAB_py*S.EAB_y) % 0.2698
S.EAB_ntc*S.EAB_pnt/(S.EAB_py*S.EAB_y) % 0.2884
S.EAB_nuc % 0.4500
S.EAB_pnt % 0.8825

%%
% the upper ceiling for imports is the amount of tradables
% Q: let's see whether the tradables ratio to GDP from the previous ss is the latest import
% ratio where the solution breaks
S1 = struct();
for i = 1:height(Told)
    S1.(Told(i, :).Properties.RowNames{:}) = Told{i, "solved"};
end
for i = 1:length(aaa.M_.param_names)
    S1.(aaa.M_.param_names{i}) = aaa.M_.params(i);
end

S1.EAB_cy % 0.5581
S1.EAB_qc/(S1.EAB_py*S1.EAB_y) % 0.5582 (0.2382 + 0.3199)
S1.EAB_ttc*S1.EAB_pttc/(S1.EAB_py*S1.EAB_y) % 0.2382
S1.EAB_ntc*S1.EAB_pnt/(S1.EAB_py*S1.EAB_y) % 0.3199
S1.EAB_nuc %0.4500
S1.EAB_pnt % 1.0860
% A: one can't think in these terms because relative prices change; it hard
% to pin down the tradables ratio; with consupmtion goods its is much
% easier because the price is a numeraire so it is the same for all steady
% states

%%
% what we can do is to reduce the numbers in the modi file at least the
% values of the old steady state and see whether solution will be found
S1.EAB_ttc*S1.EAB_pttc/(S1.EAB_py*S1.EAB_y) % 0.2382
S1.EAB_tti*S1.EAB_ptti/(S1.EAB_py*S1.EAB_y) % 0.1463

%% local function
function [paramIdentifs, values] = readHomothopyValuesFromModFile(fileName, M_)

    fid = fopen(fileName, 'r');

    % Initialize an empty vector to store the values
    paramIdentifs = [];
    values = [];
    
    % Read the file line by line
    while ~feof(fid)
        % Read a line
        line = fgetl(fid);
        
        % Split the line at the comma
        parts = strsplit(line, ',');
        
        % Extract the value, remove the semicolon, and convert to number
        paramIdentif = find(strcmp(M_.param_names, parts{1}));
        value = str2double(strtrim(parts{2}(1:end-1)));
        
        % Append the value to the vector
        paramIdentifs = [paramIdentifs; paramIdentif];
        values = [values; value];
    end
    
    % Close the file
    fclose(fid);

end

function reportTimeToLogFile(log_file, elapsed_time)

    % Format the time
    hours = floor(elapsed_time / 3600);
    minutes = floor((elapsed_time - hours * 3600) / 60);
    seconds = round(elapsed_time - hours * 3600 - minutes * 60);
    
    % Create the time string
    time_str = sprintf('%dh%02dm%02ds', hours, minutes, seconds);
    
    % Append the computing time to your log file
    fid = fopen(log_file, 'a');
    fprintf(fid, 'Total computing time : %s\n', time_str);
    fclose(fid);

end