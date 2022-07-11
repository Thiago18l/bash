#!/usr/bin/env bash
a=10
test $(( $a - 2 )) -ne 0 | echo "$a"
[ $a != 0 ] && echo TRUE


total=10
max=15

if (( total > max )); then
  echo TOTAL is GREATER than MAX
else
  echo MAX is GREATER than TOTAL
fi
