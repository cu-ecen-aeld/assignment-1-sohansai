#!/bin/bash

writefile=$1
writestr=$2
#echo "Parent Directory to search: ${writefile}";
#echo "String to search: ${writestr}";

if [ $# -ne 2 ]; then
    echo "ERROR: $# argument(s) received. Only 2 is acceptable."
    exit 1
fi

echo $writestr > $writefile

if [ -e "$writefile" ]; then
    exit 0
else
    echo "ERROR: $writefile does NOT exist."
    exit 1
fi