#!/usr/bin/env bash

echo The quick brown fox


# suppressing new line
echo -n No Newline
echo

printf "%s\n" Print arguments on "separate lines"

printf "%b\n" "Hello\nworld" "12\tword"

printf "%d\n" 23 45 0xff 011

echo "for decimal fractions and floating numbers"
printf "%f\n" 12.34 23 56.789 1.2345678
