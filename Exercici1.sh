#!/bin/bash

echo "Enter the path to the file:"
read file

# Check if file exists
if [ ! -f "$file" ]; then
  echo "File not found."
  exit 1
fi

# Create a copy without the lines starting with #
cleaned="cleaned_$(basename "$file")"
grep -v '^#' "$file" > "$cleaned"
echo "Comments removed. Cleaned file saved as: $cleaned"

# Ask user for a word/phrase to search
echo "Enter a word or phrase to search:"
read word

# Check if it exists in the new file
if grep -iq "$word" "$cleaned"; then
  echo "The phrase '$word' was found in the file."
else
  echo "The phrase '$word' was NOT found in the file."
fi

# Ask user to add a sentence at the end
echo "Now enter a sentence to add at the end of the file:"
read sentence
echo "$sentence" >> "$cleaned"
echo "Sentence added to the end of $cleaned"
