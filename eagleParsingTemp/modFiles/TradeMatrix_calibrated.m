%% Trade Matrix Calculations (with calibrated population sizes)

EA_idx = length(countries) - 2;
EA = countries(EA_idx);

% Given total imports of consumption and investment goods
consumption_values = [0.1839 * ones(1, length(countries)-3),0.2010, 0.0860, 0.0726]; % European Countries, RW, US
investment_values = [0.0920 * ones(1, length(countries)-3),0.0366, 0.0630, 0.0420]; % European Countries, RW, US

% Suffixes
suffixes = ["_imcy", "_imcgy", "_imiy", "_imigy"];

% Open the file for writing
fid = fopen('trade_matrix_values_calibrated.mod', 'w');

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

% Add the total amount of import per country

fprintf(fid, '\n');
% Loop to print additional lines
for i = 1:length(countries)
    co = countries(i);
    
    % Loop over suffixes
    for sufIdx = 1:length(suffixes)
        suffix = suffixes(sufIdx);
        
        if strcmp(co, "RW")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.0860);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.0860);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0630);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 * 0.0630);
        elseif strcmp(co, EA)
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.2010);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.2010);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0366);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 * 0.0366);
        elseif strcmp(co, "US")
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.0726);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.0726);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0420);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 * 0.0420);
        else
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcy"), 0.9 * 0.1839);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imcgy"), 0.1 * 0.1839);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imiy"), 0.9 * 0.0920);
            fprintf(fid, '%s, %f;\n', strcat(co, "_imigy"), 0.1 * 0.0920);
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



