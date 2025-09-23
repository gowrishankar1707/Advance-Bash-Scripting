#!/usr/bin/env bash

if [[ ! $# -eq 1 ]]; then
	echo "Error: Pass atleast 1 argument"
fi

val=$#

#loop using seq from 1 to $val

for i in $( seq 1 $val)
do
	echo "Arguments are: ${!i}"
done

