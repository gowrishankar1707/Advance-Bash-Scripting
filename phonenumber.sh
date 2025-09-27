#!/usr/bin/env bash

set -e

declare -A phoneNumber=(["Fire Department"]="555-0001" ["Police Departmen"
]="555-0002" ["Hospital"]="555-0003" )

while read -p "Enter the department name or Enter stop: " deptName; do
	if [[ "${deptName}" == "stop" ]]; then
		break
	fi
	if [[ -v "${phoneNumber[${deptName}]}" ]]; then
		echo "${deptName} PhoneNumber: ${phoneNumber[${deptName}]}"
	else
		echo "${deptName} key is not exit. please choose the right key"
	fi
done
