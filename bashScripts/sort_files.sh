#!/bin/bash

# Define file paths
input_file="eagleParsingTemp/modFiles/trade_matrix_values_calibrated.mod"
output_file="eagleParsingTemp/modFiles/trade_matrix_values_calibrated_old.mod"

# Check if files exist
if [ ! -f "$input_file" ] || [ ! -f "$output_file" ]; then
    echo "Error: Input or output file not found"
    exit 1
fi

# Create a temporary file to store the sorted result
temp_file=$(mktemp)

# First, remove any duplicates from the output file
sort -u "$output_file" > "$temp_file"
cat "$temp_file" > "$output_file"

# Clear the temporary file
> "$temp_file"

# Read input file to get the order of keys
while read -r line; do
    # Extract the key (part before the comma)
    key=$(echo "$line" | cut -d',' -f1)
    # Find and append the matching line from output file
    grep "^${key}," "$output_file" >> "$temp_file"
done < "$input_file"

# Replace original file with sorted content
cat "$temp_file" > "$output_file"

# Clean up temporary file
rm "$temp_file"