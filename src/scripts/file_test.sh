#!/usr/bin/env bash

OUTPUT_PATH=$(find .. -type d -name output)
path=$( pwd . )
SCRIPT=$1

test -f /etc/fstab
test -h /etc/rc.local


if [ -x "${path}/${SCRIPT}" ]; then
  echo "The file is executable" # TRUE if u can execute the file
else
  echo "The file is not executable. OUTPUT CODE: $?"
fi

echo "" > ${OUTPUT_PATH}/FILE_EMPTY # Creating a empty file

if [[ -s "${path}/${OUTPUT_PATH}/FILE_EMPTY" ]]; then # TRUE if the file exists and is not empty
  echo "The file exists and is not empty"
  echo ;
else
  echo "The file is empty or non exists. OUTPUT CODE: $?"
fi
