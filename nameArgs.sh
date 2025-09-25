#!/usr/bin/env bash
set -e

if [[  $# -ne 0 ]]; then
	echo "please pass atleast one argument"
fi

namesList="$@"

for name in ${namesList}; do
	echo "Hello, ${name}!"
done


exit 0
