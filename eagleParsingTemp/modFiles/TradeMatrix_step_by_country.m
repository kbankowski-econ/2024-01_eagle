% Read the original file
fid = fopen('trade_matrix_values_calibrated_int.mod', 'r');
original_content = textscan(fid, '%s', 'Delimiter', '\n');
original_content = original_content{1};
fclose(fid);

% Read the new file
fid = fopen('trade_matrix_values_calibrated_new.mod', 'r');
new_content = textscan(fid, '%s', 'Delimiter', '\n');
new_content = new_content{1};
fclose(fid);

% Create a map of new EAI values
new_EAI_values = containers.Map('KeyType', 'char', 'ValueType', 'char');
for i = 1:length(new_content)
    line = new_content{i};
    if startsWith(line, 'EAI')
        parts = strsplit(line, ',');
        key = strtrim(parts{1});
        value = strtrim(parts{2});
        new_EAI_values(key) = value;
    end
end

% Update the original lines
updated_content = cell(size(original_content));
for i = 1:length(original_content)
    line = original_content{i};
    parts = strsplit(line, ',');
    key = strtrim(parts{1});
    if isKey(new_EAI_values, key)
        updated_content{i} = sprintf('%s, %s', key, new_EAI_values(key));
    else
        updated_content{i} = line;
    end
end

% Write the updated content back to a new file
fid = fopen('trade_matrix_values_calibrated_int_EAI.mod', 'w');
fprintf(fid, '%s\n', updated_content{:});
fclose(fid);

disp('File updated successfully.');