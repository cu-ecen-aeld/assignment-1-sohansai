#!/bin/bash
# Assignment

usage() {
    echo "Usage: $0 <directory> <search string> "
}

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}

if [[ $# -lt 2 ]]
then
    usage
    exit 1
fi

SEARCHDIR=$1
SEARCHSTR=$2

if [[ ! -d $SEARCHDIR ]]
then
    err "Error: $SEARCHDIR is not a directory"
    exit 1
fi

NUMFILES=$(grep -m 1 -Rso "$SEARCHSTR" "$SEARCHDIR" | wc -l)
NUMLINES=$(grep -Rso  "$SEARCHSTR" "$SEARCHDIR" | wc -l)

echo "The number of files are $NUMFILES and the number of matching lines are $NUMLINES"





