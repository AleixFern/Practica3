#!/bin/bash

for (( ;; )); do  # infinite loop with for
  echo "Please select an option:"
  echo "1) Show current date and time"
  echo "2) Check if a file exists"
  echo "3) Exit"
  read -p "Enter your choice (1-3): " choice

  if [ "$choice" = "1" ]; then
    echo "Current date and time: $(date)"

  elif [ "$choice" = "2" ]; then
    file=""
    while [ -z "$file" ]; do
      read -p "Enter the file path to check (cannot be empty): " file
    done

    if [ -e "$file" ]; then
      echo "The file '$file' exists."
    else
      echo "The file '$file' DOES NOT exist."
    fi

  elif [ "$choice" = "3" ]; then
    echo "Exiting..."
    break

  else
    echo "Invalid option. Please enter 1, 2, or 3."
  fi

  echo "Returning to menu in:"
  for i in {3..1}; do  # countdown with for
    echo "$i..."
    sleep 1
  done

  echo ""
done
