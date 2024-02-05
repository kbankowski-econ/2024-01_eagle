#!/bin/bash

# The file to be processed
FILE="Dynare_4-4-3/modFiles/modeqs.mod"

# Use sed to remove leading whitespaces and save the changes back to the file
# Note the '' after -i, which is required for macOS. If you're on Linux, you can omit the ''.
sed -i '' 's/^[ \t]*//' "$FILE"
sed -i '' 's/@# if/@#if/g' "$FILE"
sed -i '' 's/@#  if/@#if/g' "$FILE"
sed -i '' 's/@#   if/@#if/g' "$FILE"
sed -i '' 's/@#  else/@#else/g' "$FILE"
sed -i '' 's/@#   else/@#else/g' "$FILE"
sed -i '' 's/@# else/@#else/g' "$FILE"
sed -i '' 's/@#   endif/@#endif/g' "$FILE"
sed -i '' 's/@#  endif/@#endif/g' "$FILE"
sed -i '' 's/@# endif/@#endif/g' "$FILE"
sed -i '' 's/@# define/@#define/g' "$FILE"
sed -i '' 's/@# for/@#for/g' "$FILE"
sed -i '' 's/@#  for/@#for/g' "$FILE"
sed -i '' 's/@#   for/@#for/g' "$FILE"
sed -i '' 's/@# endfor/@#endfor/g' "$FILE"
sed -i '' 's/@#  endfor/@#endfor/g' "$FILE"
sed -i '' 's/@#   endfor/@#endfor/g' "$FILE"

