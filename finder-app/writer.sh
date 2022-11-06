#!/usr/bin/bash

if [[ $# != 2 ]]; then
  echo "Something is wrong with the parameters"
  exit 1
fi

writefile=$1
writestr=$2

dname=$(dirname ${writefile})
fname=$(basename ${writefile})

if ! [[ -d ${filesdir} ]]; then
  mkdir -p ${dname}
fi

echo ${writestr} >${writefile}

exit 0
