#!/usr/bin/env bash

awk -F "|" -v high_sal=90000 -v low_sal=65000 -v header="====== salary credited ====" 'BEGIN { print header } $7>=high_sal || $7<=low_sal { print $2, $3 "-" $7 }'
