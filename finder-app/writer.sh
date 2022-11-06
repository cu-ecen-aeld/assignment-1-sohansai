#!/bin/bash
# Assignment 1 writer

usage() {
    echo "Usage: $0 <file> <insert string> "
}

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}

if [[ $# -lt 2 ]]
then
    usage
    exit 1
fi

CREATEFILE=$1
CREATESTR=$2

DIR=$(dirname "$CREATEFILE")
if [[ ! -d $DIR ]]
then
   echo "Attempting to create directory $DIR"
   if ! mkdir -p "$DIR" 2>/dev/null
   then
      err "Unable to create directory $DIR"
      exit 1
   else 
       echo "Directory $DIR created"
   fi
fi

if ! echo "$CREATESTR" > "$CREATEFILE"
then
    err "Unable to create file $CREATEFILE"
    exit1
fi
