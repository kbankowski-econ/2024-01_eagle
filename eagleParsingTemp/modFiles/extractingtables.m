% Get all field names from the original structure
allFields = fieldnames(aParam);

% Define the suffixes
suffixes = {'_imcy', '_imiy', '_imcgy', '_imigy'};

% Initialize the new structure
newStruct = struct();

% Loop through all fields in the original structure
for i = 1:length(allFields)
    fieldName = allFields{i};
    
    % Check if the field ends with any of the suffixes
    if any(endsWith(fieldName, suffixes))
        newStruct.(fieldName) = aParam.(fieldName);
    end
end

% Display the number of fields extracted
disp(['Number of fields extracted: ' num2str(numel(fieldnames(newStruct)))]);


% Assuming you have already created newStruct as shown in your code

% Open a file for writing
fid = fopen('output.mod', 'w');

% Get all field names from newStruct
fields = fieldnames(newStruct);

% Write each field and its value to the file
for i = 1:length(fields)
    fieldName = fields{i};
    fieldValue = newStruct.(fieldName);
    
    % Write to file in the format: fieldName = fieldValue;
    fprintf(fid, '%s = %.6f;\n', fieldName, fieldValue);
end

% Close the file
fclose(fid);

disp('newStruct has been written to output.mod');
