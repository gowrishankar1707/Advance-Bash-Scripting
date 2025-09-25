#!/usr/bin/env bash
set -e

readonly INVALID_CL_ARG_NUM=155
readonly ERROR_MSG="Please pass just one command line argument as a file that exists and is non-empty"
terminate(){
        msg="${1}"
        code="${2:-150}"
        echo "${msg}" >&2
        exit "${code}"
}

# Add your guard clause here
if [[ $# -ne 1 ]] || [[ ! -s "${1}" ]]; then
        terminate "${ERROR_MSG}" "${INVALID_CL_ARG_NUM}"
fi
# Pass a command line argument ${1} to below command
/usr/local/bin/filereader "${1}"


exit 0
