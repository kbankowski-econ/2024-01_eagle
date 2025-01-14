%% Trade Matrix Calculations (with calibrated population sizes)

EA_idx = length(countries) - 2;
EAL = countries(EA_idx);

% Given total imports of consumption and investment goods
consumption_values_private = [0.201554179, 0.177609355,	0.199488377, 0.128578708, 0.151171722, 0.141442812, 0.179664493, 0.149876526, 0.138527539, 0.166586946, 0.186037314, 0.150542302, 0.04721166, 0.077314752]; % European Countries, RW, US
investment_values_private = [0.082556348, 0.091656262,	0.098064463, 0.049618959, 0.07395127, 0.053238778,	0.037471734,	0.139133015,	0.042205962,	0.069911797,	0.052831184,	0.059205577,	0.025201038,	0.030788461]; % European Countries, RW, US 
consumption_values_public = [0.034706165, 0.030419977,	0.044594646, 0.021721759, 0.037008007, 0.022456604,	0.025933921, 0.027648614, 0.017110549,	0.036265818, 0.021621154, 0.02074426, 0.006594713, 0.008140815] % European Countries, RW, US
investment_values_public = [0.009172928,	0.010184029,	0.010896051,	0.005513218,	0.008216808,	0.00591542,	0.004163526,	0.015459224,	0.004689551,	0.007767977,	0.005870132,	0.006578397,	0.002800115,	0.00342094] % European Countries, RW, US

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

        % Loop over possible origins
        for j = 1:length(possible_origins)
            orig_country = possible_origins(j);
            foreign_population = sizes.(orig_country+"_size");
                   
            % Calculate value based on rules
            if suffix == "_imcy"  % Rest of EU consumption imports
                value = consumption_values_private(i) * foreign_population / (1 - domestic_population);
            elseif suffix == "_imcgy"
                value = consumption_values_public(i) * foreign_population / (1-domestic_population);
            elseif suffix == "_imiy" 
                value = investment_values_private(i) * foreign_population / (1 - domestic_population);
            elseif suffix == "_imigy"
                value = investment_values_public(i) * foreign_population / (1 - domestic_population); 
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
    
    % Print values for each type directly
    fprintf(fid, '%s_imcy, %f;\n', co, consumption_values_private(i));
    fprintf(fid, '%s_imcgy, %f;\n', co, consumption_values_public(i));
    fprintf(fid, '%s_imiy, %f;\n', co, investment_values_private(i));
    fprintf(fid, '%s_imigy, %f;\n', co, investment_values_public(i));
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


