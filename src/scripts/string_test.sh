#!/usr/bin/env bash

if [ ${q} != ${b} ]; then
  echo "IS NOT EQUAL"
fi

[ -z "" ] && echo "EMPTY" # -z tests if a string is empty

[ -n "test" ] && echo "IS NOT EMPTY" # -n tests if a string is not empty
