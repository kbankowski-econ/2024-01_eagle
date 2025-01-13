%% Trade Matrix Calculations (with calibrated population sizes)

EA_idx = length(countries) - 2;
EAL = countries(EA_idx);

% Given total imports of consumption and investment goods
consumption_values_private = [0.2015, 0.1775, 0.1996, 0.1287, 0.1513, 0.1414, 0.1796, 0.1497, 0.1386, 0.1666, 0.1861, 0.1507, 0.0472, 0.0774]; % European Countries, RW, US
investment_values_private = [0.0826, 0.0915, 0.098, 0.0496, 0.0741, 0.0533, 0.0373, 0.1393, 0.0423, 0.0699, 0.0529, 0.0594, 0.0252, 0.0308]; % European Countries, RW, US 
consumption_values_public = [0.0347, 0.0305, 0.0446, 0.0218, 0.0369, 0.0224, 0.0259, 0.0277, 0.0173, 0.0364, 0.0216, 0.0208, 0.0065, 0.0081] % European Countries, RW, US
investment_values_public = [0.0092, 0.0101, 0.0108, 0.0057, 0.0083, 0.0060, 0.0041, 0.0154, 0.0046, 0.0077, 0.0058, 0.0066, 0.0028, 0.0033] % European Countries, RW, US

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


