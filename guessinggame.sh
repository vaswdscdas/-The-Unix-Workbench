#!/bin/bash

function number_of_files_in_current_directory {
   ls -1 | wc -l
}

while [[ "$CORRECT_GUESS" != true ]]
do
  echo "Please tell me the number of files in the current directory and press [ENTER]: "
  read number_of_files_guess
  # One if statement
  if [ "$(number_of_files_in_current_directory)" -gt "$number_of_files_guess" ]; then
    echo "Your guess was too low."
  elif [ "$(number_of_files_in_current_directory)" -eq "$number_of_files_guess" ]; then
    echo "Super! You are correct."
    CORRECT_GUESS=true
  else
    echo "Your guess was too high."
  fi
done
