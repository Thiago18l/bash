#!/usr/bin/env bash

n=1
while [ $n -le 10 ]; do
  echo "${n}"
  n=$(( $n + 1 ))
done




while !(( 0 < ${n} )) ; do # INFINITE LOOP
  read x
  echo ${x}
done

dir=$(find .. -type d -name output)

while info= read -r line ; do
  echo ${line}
done < ${dir}/RANDOM_FILE

n=1
until [ ${n} -gt 10 ]; do
  echo ${n}
  n=$(( $n + 1 ))
done


for country_name in Canada Brazil Portugal ; do
  printf "%s\n" "${country_name}"
done





for n in a b c d e ; do
  while : ; do
    if [ $RANDOM -gt 20000 ] ; then
      printf "IS GREATER\n"
      break 2 ## Break out both loops
    elif [ $RANDOM ]; then
      printf "IS NOT GREATER\n"
      break # break only the while loop
    fi
  done
done


for n in {1..9} ; do
  x=$RANDOM
  [ $x -le 20000 ] && continue
  echo "n=$n x=$x"
done
