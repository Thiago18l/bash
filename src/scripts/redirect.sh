#!/usr/bin/env bash


OUTPUT_PATH=$(find . -type d -name output)
echo "" > $OUTPUT_PATH/empty_file.md


# Adding new line to the empty_file
echo -e exit 0 >> $OUTPUT_PATH/empty_file.md

# redirecting standard output

printf "%s\n%v\n" OK? Oops! > $OUTPUT_PATH/FILE 2> $OUTPUT_PATH/ERRORFILE

# We can change the error output to "bitbucket", anything written to it is discarded

printf "%s\n%v\n" "OK AGAIN?" "Oops! AGAIN!" > $OUTPUT_PATH/FILE_TWO 2>/dev/null

# Instead of sending output to a file, it can be redirected to another I/O stram by using
# >&N where N is the number of the file descriptor. This command sends both standard
# output and standard error to FILE:

printf "%s\n%v\n" "OK AGAIN AGAIN?" "Oops! AGAIN AGAIN" > $OUTPUT_PATH/FILE_THREE 2>&1
