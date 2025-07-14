et -o pipefail
           
# This is the log file we're interested in
logfile="/etc/logs/error.log"
homepath="/home/bob/"

if [[ ! -f "${logfile}" ]]; then
        echo "${logfile} is not exists in the system
        exit 1
fi

echo "Number of times each error message appears:"
# Your code here
cat "${logfile}" | grep -i "DB_CONN_FAILURE" | sort | uniq -c
