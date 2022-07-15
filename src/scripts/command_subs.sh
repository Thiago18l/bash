#!/usr/bin/env bash

source src/scripts/redirect.sh


FILE=$( find . -type f -name arithmetic.sh)
wc -l $FILE > $OUTPUT_PATH/$( date +%d-%m-%Y ).log


## Pathname expansion

context=$( find . -type d -name src )
echo ${context}

echo *c

echo *d
