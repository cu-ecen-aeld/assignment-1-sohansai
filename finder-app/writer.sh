#!/usr/bin/bash

echo "$0 $1 $2"

FILENAME=$1
CONTENT=$2

if [ $# -lt 2 ]
then
    echo "Need at least two parameters"
    exit 1
fi

# if [ -d $FILENAME ]
# then
#     echo "$1"
# else
#     echo "$1 is not a directory"
#     exit 1
# fi

touch $FILENAME

if [ $? -ne 0 ]
then
    exit 1
fi

echo $2 > $FILENAME

if [ $? -ne 0 ]
then
    exit 1
fi
