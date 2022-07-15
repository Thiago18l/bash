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


# Arithmetic expansions

echo "1: $(( 1 + 12 )) |" "2: $(( 12 * 10 )) |" "3: $(( 16 / 4 )) |" \
"4: $(( 6 - 9))"

echo "$(( 3 + 4 * 5 )) |" "$(( (3 + 4) * 5 ))" # first is 23 and the second is 35
