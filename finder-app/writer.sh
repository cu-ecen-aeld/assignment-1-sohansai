#!/bin/bash

if [ $# -lt 2 ]
then
    echo "Invalid number of arguments, expected 2 instead got $# arguments"
    exit 1
else
    writefile=$1
    writestr=$2

    touch $writefile &> /dev/null

    if [[ $? == "0" ]]
    then
        echo $writestr > $writefile
    else
        echo "File $writefile could not be created"
        rm $writefile
        exit 1
    fi
fi
