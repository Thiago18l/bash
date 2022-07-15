#!/usr/bin/env bash

source src/scripts/redirect.sh


echo >(true) <(true)
echo <(ls -l) >(pr -Tn)

ls -l |
while read src links owner group size month day time file; do
  printf "%10d %s\n" "${size}" "${file}"
  totalsize=$(( ${totalsize:=0} + ${size:-0} ))
done

echo ${totalsize-unset} # print unset if variable is not set
