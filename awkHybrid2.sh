#!/usr/bin/env bash

awk -F "|" -v high_sal=90000 -v low_sal=65000 -v header_1="====== To Be adjusted down ====" -v header_2="====== To Be adjusted Up ====" '
$7 >= high_sal {
        if (!printed_header_1){
                print header_1;
		printed_header_1=1
		}
        print $2, $3 "-" $7
        }
$7 <= low_sal {
	if(! printed_header_2){
			print header_2;
			printed_header_2=1
			}
        print $2, $3 "-" $7 }'
