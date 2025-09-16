#!/usr/bin/env bash

file_count=$( find /home/scripts/ -type f | wc -l)
echo "number of files in scripts folder :${file_count}"

