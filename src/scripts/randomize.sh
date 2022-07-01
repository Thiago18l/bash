#!/usr/bin/env bash

source src/scripts/redirect.sh


index=1
while [[ $index -le 4 ]]; do
  RANDOM_NUM=${RANDOM}
  echo ${RANDOM_NUM}
  echo ${RANDOM_NUM} >> $OUTPUT_PATH/RANDOM_FILE
  index=$(( $index + 1 ))
done
