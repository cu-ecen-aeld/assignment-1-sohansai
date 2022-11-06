#!/usr/bin/bash

if [[ $# != 2 ]]; then
  exit 1
fi

filesdir=$1
searchstr=$2

if ! [[ -d ${filesdir} ]]; then
  exit 1
fi

n_match_lines=$(grep --binary-files text -r ${searchstr} ${filesdir} | wc -l)
n_match_files=$(grep --binary-files text -l -r ${searchstr} ${filesdir} | sort | uniq | wc -l)

echo "The number of files are ${n_match_files} and the number of matching lines are ${n_match_lines}"

exit 0
