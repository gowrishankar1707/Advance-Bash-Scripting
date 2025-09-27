#!/usr/bin/env bash

rl=$( readlink -f "${0}" )
echo "readlink :${rl}"

dir=$( dirname "${rl}" )

echo "dirname: ${dir}"
