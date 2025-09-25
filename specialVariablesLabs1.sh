#!/usr/bin/env bash
set -e

readonly ARGUMNETS_ERRCODE=155
readonly ERROR_MSG="Please pass just one command line argument as a file that exists and is non-empty"
terminate(){
        msg="${1}"
        code="${2:-100}"
        echo "${msg}"
        exit "${code}"
}

# Add your guard clause here
if [[ $# -ne 1 ]] || [[ ! -s "${1}" ]]; then
        terminate "${ERROR_MSG}" "${ARGUMNETS_ERRCODE}"
fi
# Pass a command line argument ${1} to below command
/usr/local/bin/filereader "${1}"

echo "Shouldn't reach this line"

exit 0
