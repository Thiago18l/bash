#!/usr/bin/env bash

if [ ${q} != ${b} ]; then
  echo "IS NOT EQUAL"
fi

[ -z "" ] && echo "EMPTY" # -z tests if a string is empty

[ -n "test" ] && echo "IS NOT EMPTY" # -n tests if a string is not empty


function isFalse() {
  local arg=$1
  if [[ $arg -eq 1 ]]; then
    echo FALSE
    return 1
  else
    echo TRUE
    return 0
  fi
}

str1=abc
str2=def

[ "${str1}" \< "${str2}" ] && echo "LESS THAN IS $(isFalse $?)"


[ "${str1}" \> "${str2}" ] || echo "GREATER THAN IS $(isFalse $?) "  # false

if [ ${str1} -o -a ${str2} ]; then
  echo TRUE
else
  echo FALSE
fi
