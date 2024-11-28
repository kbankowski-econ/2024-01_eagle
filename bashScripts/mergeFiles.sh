#!/bin/bash

# Define file paths
old_file="eagleParsingTemp/modFiles/trade_matrix_values_calibrated_old.mod"
interim_file="eagleParsingTemp/modFiles/trade_matrix_values_calibrated_interim.mod"
new_file="eagleParsingTemp/modFiles/trade_matrix_values_calibrated.mod"
temp_file=$(mktemp)

# Check if files exist
if [ ! -f "$old_file" ] || [ ! -f "$new_file" ]; then
    echo "Error: Input files not found"
    exit 1
fi

# Read both files simultaneously line by line
while IFS= read -r old_line <&4 || [ -n "$old_line" ]; do
    # Read from new file
    IFS= read -r new_line <&3 || true
    
    if [[ $old_line == EAA* ]]; then
        # If line starts with EAA, use the line from new.txt
        echo "$new_line" >> "$temp_file"
    else
        # If line doesn't start with EAA, use the line from old.txt
        echo "$old_line" >> "$temp_file"
    fi
done 4< "$old_file" 3< "$new_file"

# Replace original file with combined content
cat "$temp_file" > "$interim_file"

# Clean up temporary file
rm "$temp_file"