#!/bin/bash

# Keep asking until the user enters a valid directory
until [ -d "$dir" ]; do
  echo "Enter a valid directory path:"
  read dir

  if [ ! -d "$dir" ]; then
    echo "That is not a valid directory. Try again."
  fi
done

# Show permissions 
echo ""
echo "Permissions:"
ls -ld "$dir" | awk '{print $1}'

# Count number of items
count=$(ls -1A "$dir" | wc -l)
echo "Number of items (files and subfolders): $count"

# List names of all items
echo "Contents:"
ls "$dir"
