#!/bin/bash

# Define the input file name
input_file="eagleParsingTemp/submodules/modeqs.mod"

# Use sed with extended regular expressions to replace 'c' in specific words between lines 458 and 489
# This modifies the original file directly without creating a backup on macOS
sed -i '' -E '458,489s/(_tt|_mut|_nut|_ht|_im|_q|_mu|_nu|_nt|_ptt|_gammaim|_pim)c/\1@{aItem}/g' "$input_file"

echo "Modification complete. The specified instances have been updated."
