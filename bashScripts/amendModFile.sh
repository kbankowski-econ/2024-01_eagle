#!/bin/bash

# Define the input file name
input_file="eagleParsingTemp/submodules/modeqs.mod"

# Use sed with extended regular expressions to replace 'c' in specific words between lines 357 and 431
# This modifies the original file directly without creating a backup on macOS
sed -i '' -E '357,431s/(_im)c|(_mum)c|(_num)c|(_gammaim)c|(_pim)c|(_piim)c/\1\2\3\4\5\6{@{aItem}}/g' "$input_file"

echo "Modification complete. The specified instances have been updated."
