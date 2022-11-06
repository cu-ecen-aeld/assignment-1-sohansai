#!/bin/sh

if [ "$#" -ne 2 ]
then
	echo "Expected 2 arguments but got $#"
	exit 1
elif [ ! -d "$1" ]
then
	echo "First argument is not a directory or does not exist"
	exit 1
fi

FILESDIR="$1"
SEARCHSTR="$2"
TOTAL=$(find "$FILESDIR" -type f | wc -l)
LINES=$(grep -r "$SEARCHSTR" "$FILESDIR" | wc -l)

echo "The number of files are ${TOTAL} and the number of matching lines are ${LINES}"
