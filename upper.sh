#!/bin/bash


#- read -p displays the prompt:
#	"Enter favorite movie names (or 'exit' to stop): "
#	and waits for user input.
#- The input is stored in the variable movie.
#-The while loop continues as long as read getting movie name. if read is exit. then the loop will break

while read -p "Enter favorite movie names (or 'exit' to stop): " movie; do
  if [[ "${movie}" == "exit" ]]; then
    break
  fi
  declare -u movie_upper="${movie}"
  echo "${movie_upper}"
done
