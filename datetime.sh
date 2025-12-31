#!/bin/bash

#log the date and time when the script last executed

date >> /home/scripts/datetimeexecuted.txt
cat /proc/version >> /home/scripts/datetimeexecuted.txt



