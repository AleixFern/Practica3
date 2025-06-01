#!/bin/bash

# Ask for the file name to store the words
echo "Enter the name of the file to store the words:"
read filename

# Check if the file exists if it doesn't create it
if [ ! -e "$filename" ]; then
  touch "$filename"
  echo "File '$filename' created."
else
  echo "File '$filename' already exists. New words will be added to it."
fi

# Start reading words from user input
echo "Start typing words (type ':>' to stop):"

while true; do
  read word
  if [ "$word" = ":>" ]; then
    echo "Input finished."
    break
  fi
  echo "$word" >> "$filename"
done
