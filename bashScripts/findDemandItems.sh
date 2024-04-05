#!/bin/bash

# The text file path
file_path="eagleParsingTemp/submodules/symdecls.mod"

# Temporary file to store words that contain 'c'
temp_file_c_words=$(mktemp)

# Temporary file to store words from the file
temp_file_all_words=$(mktemp)

# Extract words containing 'c'
grep -oE '\b\w*c\w*\b' "$file_path" > "$temp_file_c_words"

# Extract all words to another temporary file
grep -oE '\b\w+\b' "$file_path" > "$temp_file_all_words"

# Loop through words containing 'c' and check if replacing 'c' with 'i' gives a word in the text
while IFS= read -r word; do
    transformed_word=$(echo "$word" | sed 's/c/i/g')
    if grep -q "\b$transformed_word\b" "$temp_file_all_words"; then
        echo "$word"
    fi
done < "$temp_file_c_words"

# Cleanup
rm "$temp_file_c_words"
rm "$temp_file_all_words"