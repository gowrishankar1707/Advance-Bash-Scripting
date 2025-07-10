#!/bin/bash

readonly SRC_FILE="shankar"

#check the SRC_FILE exists using -f along with if condition
if [[ -f ${SRC_FILE} ]]; then 
	#assign the filename to source variable to access the file in this code block
	source ${SRC_FILE}
else
	name="THIS IS A ELSE CONDITION STATEMENT NOT FROM SOURCE"
fi


echo $name	
