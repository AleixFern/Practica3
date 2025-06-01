#!/bin/bash

# Show usernames with at least one uppercase letter
echo "Usernames with uppercase letters:"
grep '^[^:]*[A-Z]' /etc/passwd | cut -d: -f1

# Ask the user for a valid username
while true; do
  echo ""
  echo "Enter a username:"
  read username

  #Check if the username exists in /etc/passwd
  if grep -q "^$username:" /etc/passwd; then
    break  # valid username
  else
    echo "Error: Username '$username' does not exist. Try again."
  fi
done

# Show all information about the user
echo ""
echo "User info for '$username':"
grep "^$username:" /etc/passwd
