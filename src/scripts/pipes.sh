#!/usr/bin/env bash
source src/scripts/redirect.sh


printf "%s\n" "${RANDOM}" "${RANDOM}" "${RANDOM}" "${RANDOM}" | tee $OUTPUT_PATH/FILE_PIPE
