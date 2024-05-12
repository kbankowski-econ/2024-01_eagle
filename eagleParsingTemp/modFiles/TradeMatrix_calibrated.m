%% Trade Matrix Calculations (with calibrated population sizes)

% Given countries and sizes

countries = ["EAA", "EAB", "EAC", "EAD", "EAE","EAF","EAG","EAH","EAI","EAJ","EAK","EAL","EAM", "RW", "US"];
countriesResidual = [countries(14), countries(15), countries(1), countries(2) , countries(3) , countries(4) , countries(5), countries(6), countries(7), countries(8), countries(9), countries(10), countries(11), countries(12), countries(13)];

EA_idx = length(countries) - 2;
EA = countries(EA_idx);

sizes = struct(...
    'EAA_size', 0.01266339, ...
    'EAB_size', 0.00551233, ...
    'EAC_size', 0.00712465, ...
    'EAD_size', 0.00349612, ...
    'EAE_size', 0.04230918, ...
    'EAF_size', 0.00034567, ...
    'EAG_size', 0.01088291, ...
    'EAH_size', 0.02940031, ...
    'EAI_size', 0.00706907, ...
    'EAJ_size', 0.00292989, ...
    'EAK_size', 0.03834611, ...
    'EAL_size', 0.00676711, ...
    'EAM_size', 0.05315326, ...
    'RW_size', 0.470000, ...
    'US_size', 0.310000);

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



