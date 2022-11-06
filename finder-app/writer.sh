#!/bin/sh

if [ "$#" -ne 2 ]
then
	echo "Expected 2 arguments but got $#"
	exit 1
fi

WRITEFILE="$1"
WRITESTR="$2"
mkdir -p "${WRITEFILE%/*}"
echo "$WRITESTR" > "$WRITEFILE"
