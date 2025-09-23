#!/usr/bin/env bash


#exit the script if the command returns the NON ZERO error code
set -e

readonly CL_ARGS_ERROR=155
cals_per_step=0.04

terminate(){
	msg="${1}"
	code="${2:-160}"
	echo "Error:${msg}" >&2
	exit "${code}"
}

if [[ $# -ne 1 ]]; then
	terminate "please pass one argument" "${CL_ARGS_ERROR}"
fi

steps="${1}"

#using bc doing the basic math from pipe output

cals_burned=$(echo "${steps} * ${cals_per_step}" | bc)

echo "Calories bruned for ${steps} steps : ${cals_burned}"

exit 0

