#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
  ls -1 | wc -l
}

# Main game logic
main() {
  local correct_count=$(count_files)
  local user_guess

  echo "Welcome to the Guessing Game!"
  echo "Guess how many files are in the current directory:"

  while true; do
    read -p "Enter your guess: " user_guess

    if [[ $user_guess -lt $correct_count ]]; then
      echo "Your guess is too low. Try again!"
    elif [[ $user_guess -gt $correct_count ]]; then
      echo "Your guess is too high. Try again!"
    else
      echo "Congratulations! You guessed the correct number of files: $correct_count"
      break
    fi
  done
}

# Run the game
main
