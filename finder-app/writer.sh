#!/bin/sh


if [ $# -ne 2 ];then
    echo "ERROR: two arguments required"
    echo "$0 [FULL PATH TO FILE] [STRING TO WRITE]"
    exit 1
else
    writefile=$1
    writestr=$2

    echo $writestr > $writefile
fi

