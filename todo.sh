#!/usr/bin/env bash

declare -a todo_list


while read -p "Add items to your to do list (or type 'stop' to stop addi
ng): " todo; do
  if [[ "${todo}" == "stop" ]]; then
    break
  fi
  todo_list+=("${todo}")
done

echo "Current array:\n"
printf "%s\n" "${todo_list[@]}"

sorted_array=$( printf "%s\n" "${todo_list[@]}" | sort )

printf "Sorted Arry:\n%s\n" "${sorted_array[@]}"


