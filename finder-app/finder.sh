#!/bin/sh


if [ $# -ne 2 ];then
    echo "ERROR: two arguments required"
    echo "$0 [DIRECTORY] [SEARCH_STRING]"
    exit 1
else
    # path to a directory on the filesystem
    filesdir=$1
    # a text string which will be searched within these files
    searchstr=$2

    if [ -d "$filesdir" ];then
        num_files=$( ls -1q $filesdir | wc -l )
        # unclear what to do with binary files, may need to be "-I"
        num_lines=$( grep -I -r "$searchstr" "$filesdir" | wc -l )

        echo "The number of files are ${num_files} and the number of matching lines are ${num_lines}"
    else
        echo "$filesdir is not a directory"
        exit 1
    fi
fi
