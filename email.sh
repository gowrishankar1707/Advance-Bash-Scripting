#!/usr/bin/env bash

declare -A email=( ["Kriti"]="kriti@kodekloud.com" ["Mark"]="mark@kodekloud.com" ["Enrique"]="enrique@kodekloud.com"  ["Feng"]="feng@kodekloud.com" )


#for loop that iterates the array

for key in "${!email[@]}"; do
	echo "${key}'s email is ${email[${key}]}"
done
