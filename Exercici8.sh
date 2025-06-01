#!/bin/bash

while true; do
  echo "Enter a password:"
  read -s password  # -s hides input

  # Check length
  if [ ${#password} -lt 8 ]; then
    echo "Error: Password must be at least 8 characters long."
    continue
  fi

  # Check for at least one uppercase letter
  if ! echo "$password" | grep -q '[A-Z]'; then
    echo "Error: Password must contain at least one uppercase letter."
    continue
  fi

  # Check for at least one digit
  if ! echo "$password" | grep -q '[0-9]'; then
    echo "Error: Password must contain at least one digit."
    continue
  fi

  # If all checks pass
  echo "Password is valid!"
  break
done
