#!/usr/bin/env bash
set -e

readonly INVALID_CL_ARG_NUM=155
readonly ERROR_MSG="Pass a single command line argument as a file that exists and is non-empty"
readonly SCRIPT_NAME="${0##./}"
terminate(){
        msg="${1}"
        code="${2:-150}"
        echo "${msg}" >&2
        exit "${code}"
}

usage(){
  cat<<USAGE
  Usage: ${SCRIPT_NAME} [arg]
   This script reads the contents from a file using a filereader binary
   Arguments: 
       filename: An existing non-empty file
   USAGE
}

# Add your guard clause here
if [[ $# -ne 1 ]] || [[ ! -s "${1}" ]]; then
        usage
		terminate "${ERROR_MSG}" "${INVALID_CL_ARG_NUM}"
fi
# Pass a command line argument ${1} to below command
/usr/local/bin/filereader "${1}"


exit 0
