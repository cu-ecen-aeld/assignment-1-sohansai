#!/bin/sh
# Author: sohansai


FILESDIR=""
SEARCHSTR=""

if [ $# -lt 2 ]
then
	echo "Incorrect Number of arguments"
	echo "Usage example: finder.sh filesdir searchstr"
	exit 1
else
	FILESDIR=$1
	SEARCHSTR=$2
	if [ ! -d $FILESDIR ]
	then
		echo "$FILESDIR is not a directory"
		exit 1
	fi
fi

output=$(grep -rch "$SEARCHSTR" $FILESDIR | grep -v 0)

NOOFFILES=$(echo $output | wc -w)
NOOFMATCHINGLINES=$(echo $output | sed 's/ /+/g' | bc)

echo "The number of files are $NOOFFILES and the number of matching lines are $NOOFMATCHINGLINES"
