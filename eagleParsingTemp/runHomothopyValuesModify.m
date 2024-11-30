
fid = fopen('trade_matrix_values_calibrated_interim.mod', 'r');

% Initialize an empty vector to store the values
values = [];

% Read the file line by line
while ~feof(fid)
    % Read a line
    line = fgetl(fid);
    
    % Split the line at the comma
    parts = strsplit(line, ',');
    
    % Extract the value, remove the semicolon, and convert to number
    value = str2double(strtrim(parts{2}(1:end-1)));
    
    % Append the value to the vector
    values = [values; value];
end

% Close the file
fclose(fid);

% The value that will go into ss calculation
options_.homotopy_values(:, 4) = values;

% Running steady state
steady();