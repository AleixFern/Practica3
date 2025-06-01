#!/bin/bash

echo "Welcome to Rock, Paper, Scissors!"

# Main game loop
while true; do
  echo ""
  echo "Choose: rock, paper, or scissors"
  read user_choice

  # Convert to lowercase (optional, for robustness)
  user_choice=$(echo "$user_choice" | tr 'A-Z' 'a-z')

  # Validate input
  if [[ "$user_choice" != "rock" && "$user_choice" != "paper" && "$user_choice" != "scissors" ]]; then
    echo "Invalid choice. Please type rock, paper, or scissors."
    continue
  fi

  # Random computer choice
  options=("rock" "paper" "scissors")
  machine_choice=${options[$RANDOM % 3]}
  echo "Machine chose: $machine_choice"

  # Determine winner
  if [ "$user_choice" = "$machine_choice" ]; then
    echo "It's a tie!"
  elif { [ "$user_choice" = "rock" ] && [ "$machine_choice" = "scissors" ]; } ||
       { [ "$user_choice" = "scissors" ] && [ "$machine_choice" = "paper" ]; } ||
       { [ "$user_choice" = "paper" ] && [ "$machine_choice" = "rock" ]; }; then
    echo "You win!"
  else
    echo "Machine wins!"
  fi

  # Ask if user wants to play again
  echo ""
  echo "Do you want to play again? (y/n)"
  read play_again
  if [ "$play_again" != "y" ]; then
    echo "Thanks for playing!"
    break
  fi
done
