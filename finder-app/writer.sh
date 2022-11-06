#!/bin/sh
# Author: sohansai


WRITEFILE=""
WRITESTR=""

if [ $# -lt 2 ]
then
	echo "Incorrect Number of arguments"
	echo "Usage example: writer.sh writefile writestr"
	exit 1
else
	WRITEFILE=$1
	WRITESTR=$2

	parentdirname=$(dirname $WRITEFILE)
	mkdir -p $parentdirname

	if [ ! -d $parentdirname ]
	then
		echo "$parentdirname directory cannot be created"
		exit 1
	fi
fi

echo $WRITESTR > $WRITEFILE
