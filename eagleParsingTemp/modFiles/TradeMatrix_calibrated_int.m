%% Trade Matrix Calculations (with calibrated population sizes)

EA_idx = length(countries) - 2;
EAL = countries(EA_idx);

% Given total imports of consumption and investment goods
consumption_values = [0.2363, 0.208, 0.2441, 0.1503, 0.1882, 0.1639, 0.2056, 0.1775, 0.1556, 0.2029, 0.2076, 0.1712, 0.0538, 0.0854]; % European Countries, RW, US
investment_values = [0.0918, 0.1019, 0.109, 0.0551, 0.0822, 0.0591, 0.0417, 0.1546, 0.0469, 0.0777, 0.0587, 0.0658, 0.028, 0.0342]; % European Countries, RW, US

% Suffixes
suffixes = ["_imcy", "_imcgy", "_imiy", "_imigy"];

% Open the file for writing
fid = fopen('trade_matrix_values_calibrated_int.mod', 'w');

% Loop over origin and destination countries
for i = 1:length(countries)
    co = countries(i);
    domestic_population = sizes.(co+"_size");
       
    % Exclude co6 and itself from the list of possible origins
    possible_origins = setdiff(countries, [co, countriesResidual(i)]);

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
            foreign_population = sizes.(orig_country+"_size");
                   
            % Calculate value based on rules
            if suffix == "_imcy" || suffix == "_imcgy" % Rest of EU consumption imports
                value = consumption_values(i) * foreign_population / (1 - domestic_population) * multiplier;
            elseif suffix == "_imiy" || suffix == "_imigy"
                value = investment_values(i) * foreign_population / (1 - domestic_population) * multiplier;
            end

           % Create label
           label = strcat(co, orig_country, suffix);
            
           % Print label and value to the file
           fprintf(fid, '%s, %f;\n', label, value);

        end

    end

end

% Loop to print additional lines
for i = 1:length(countries)
    co = countries(i);
    
    % Loop over suffixes
    for sufIdx = 1:length(suffixes)
        suffix = suffixes(sufIdx);
        
        if strcmp(co, "RW")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.0538);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.0538);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.028);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 * 0.028);
        elseif strcmp(co, EAL)
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.1712);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.1712);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0658);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 * 0.0658);
        elseif strcmp(co, "US")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.0854);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.0854);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0342);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 * 0.0342);
        elseif strcmp(co, "EAA")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.2363);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.2363);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0918);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 *  0.0918);
        elseif strcmp(co, "EAB")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.208);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.208);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.1019);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 *  0.1019);
        elseif strcmp(co, "EAC")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.2441);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.2441);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.109);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 *  0.109);  
        elseif strcmp(co, "EAD")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.1503);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.1503);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0551);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 *  0.0551);
        elseif strcmp(co, "EAE")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.1882);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.1882);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0822);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 *  0.0822);
        elseif strcmp(co, "EAF")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.1639);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.1639);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0591);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 *  0.0591);
        elseif strcmp(co, "EAG")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.2056);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.2056);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0417);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 *  0.0417);
        elseif strcmp(co, "EAH")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.1775);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.1775);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.1546);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 *  0.1546); 
        elseif strcmp(co, "EAI")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.1556);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.1556);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0469);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 *  0.0469);
        elseif strcmp(co, "EAJ")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.2029);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.2029);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0777);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 *  0.0777);
        else 
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.2076);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.2076);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0587);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 *  0.0587);            
        end
    
    end

end

% Add country sizes

% Iterate over the fields of the sizes struct
fields = fieldnames(sizes);

for i = 1:numel(fields)
    % Get the field name and value
    field_name = fields{i};
    field_value = sizes.(field_name);
    
    % Write the field name and value to the mod file
    fprintf(fid, '%s, %f;\n', field_name, field_value);
end



% Close the mod file
fclose(fid);



