%% Trade Matrix Calculations

% Define countries list 
countries = ["EAA", "EAB", "EAC", "EAD", "EAE", "EAF", "EAG", "EAH", "EAI", "RW", "US"];
countries10 = [countries(10), countries(11) , countries(1) , countries(2) , countries(3) , countries(4) , countries(5) , countries(6) , countries(7) , countries(8),countries(9)];
% Get the third last element of the countries list to define Rest of Europe
EA = countries(end - 2);

% Suffixes
suffixes = ["_imcy", "_imcgy", "_imiy", "_imigy"];

% Open the file for writing
fid = fopen('trade_matrix_values.mod', 'w');

% Loop over origin and destination countries
for i = 1:length(countries)
    co = countries(i);
    
    % Exclude co6 and itself from the list of possible origins
    possible_origins = setdiff(countries, [co, countries10(i)]);
    
    % Loop over suffixes
    for sufIdx = 1:length(suffixes)
        suffix = suffixes(sufIdx);
        
        % Determine multiplier based on suffix
        if suffix == "_imcy" || suffix == "_imiy"
            multiplier = 0.9; % Multiplier for imcy and imiy
        elseif suffix == "_imcgy" || suffix == "_imigy"
            multiplier = 0.1; % Multiplier for imcgy and imigy
        end

        % Loop over possible origins
        for j = 1:length(possible_origins)
            orig_country = possible_origins(j);
            
            % Calculate value based on rules
            value = 0; % Default value
            
            % Set import value based on item type and origin 
            if strcmp(co, EA)
                if suffix == "_imcy" || suffix == "_imcgy" % Rest of EU consumption imports 
                    if strcmp(orig_country, "US") 
                        value = 0.0115 * multiplier; % Different value for US 
                    elseif strcmp(orig_country, "RW") 
                        value = 0.0852 * multiplier; % Different value for RW
                    else
                        value = (0.0872/(length(countries)-3)) * multiplier; % Different value for BIG countries 
                    end
                elseif suffix == "_imiy" || suffix == "_imigy" % Rest of EU investment imports 
                    if strcmp(orig_country, "US") 
                        value = 0.0058 * multiplier;  % Different value for US 
                    elseif strcmp(orig_country, "RW") 
                        value = 0.0426 * multiplier; % Different value for RW
                    else
                        value = (0.0436/(length(countries)-3)) * multiplier; % Different value for BIG countries 
                    end
                end
            elseif strcmp(co, "RW")
                if suffix == "_imcy" || suffix == "_imcgy" % RW consumption imports 
                    if strcmp(orig_country, "US")
                        value = 0.0400 * multiplier; % Different value for US                        
                    elseif strcmp(orig_country, EA) 
                        value = 0.0106 * multiplier; % Different value for Rest of EU
                    else
                        value = (0.0354/(length(countries)-3)) * multiplier; % Different value for BIG countries 
                    end
                elseif suffix == "_imiy" || suffix == "_imigy" % RW investment imports 
                    if strcmp(orig_country, "US")
                        value = 0.0338 * multiplier; % Different value for US                        
                    elseif strcmp(orig_country, EA) 
                        value = 0.0073 * multiplier; % Different value for Rest of EU
                    else 
                        value = (0.0219/(length(countries)-3)) * multiplier; % Different value for BIG countries
                    end
                end
            elseif strcmp(co, "US")
                if suffix == "_imcy" || suffix == "_imcgy" % US consumption imports
                    if strcmp(orig_country, "RW")
                        value = 0.0617 * multiplier; % Different value for RW                         
                    else
                        value = (0.0078/(length(countries)-3)) * multiplier; % Different value for BIG countries
                    end
                elseif suffix == "_imiy" || suffix == "_imigy" % US investment imports
                    if strcmp(orig_country, "RW")
                        value = 0.0364 * multiplier; % Different value for RW    
                    else
                        value = (0.0037/(length(countries)-3)) * multiplier; % Different value for BIG countries
                    end
                end
            else   
                if suffix == "_imcy" || suffix == "_imcgy" % BIG countries consumption imports 
                    if strcmp(orig_country, EA) 
                        value = 0.411169957 * 0.201*0.31/(1-0.16/(length(countries)-3)) * multiplier; % Different value for EAE 
                    elseif strcmp(orig_country, "US")
                        value = 0.327363184 * 0.201*0.06/(1-0.16/(length(countries)-3)) * multiplier; % Different value for US 
                    elseif strcmp(orig_country, "RW") 
                        value = 1.474245792 * 0.201*0.47/(1-0.16/(length(countries)-3)) * multiplier; % Different value for RW
                    else
                        value = (0.201 - ...
                            0.411169957 * 0.201*0.31/(1-0.16/(length(countries)-3))-...
                            0.327363184 * 0.201*0.06/(1-0.16/(length(countries)-3))-...
                            1.474245792 * 0.201*0.47/(1-0.16/(length(countries)-3))...
                            )/(length(countries)-4)* multiplier;
                    end
                elseif suffix == "_imiy" || suffix == "_imigy" % BIG countries investment imports 
                    if strcmp(orig_country, EA) 
                        value = 1.636171338 *0.0366*0.31/(1-0.16/(length(countries)-3))* multiplier; % Different value for EAE 
                    elseif strcmp(orig_country, "US")
                        value = 2.486338798 *0.0366*0.06/(1-0.16/(length(countries)-3))* multiplier; % Different value for US 
                    elseif strcmp(orig_country, "RW") 
                        value = 0.39065225 *0.0366*0.47/(1-0.16/(length(countries)-3)) * multiplier; % Different value for RW
                    else
                        value = (0.0366 - ...
                            1.636171338 *0.0366*0.31/(1-0.16/(length(countries)-3))- ...
                            2.486338798 *0.0366*0.06/(1-0.16/(length(countries)-3))- ...
                            0.39065225 *0.0366*0.47/(1-0.16/(length(countries)-3)) ...
                            )/(length(countries)-4)* multiplier; % Shared value for other BIG countries
                    end
                end
            end
            
            % Create label
            label = strcat(co, orig_country, suffix);
            
            % Print label and value to the file
            fprintf(fid, '%s, %f;\n', label, value);
        end
    end
end




