#!/usr/bin/env bash

if [ 1 -eq 1 ]; then
  echo "TRUE"
  echo $?
else
  echo "FALSE"
  echo $?
fi

if [ $1 -ne $2 ]; then
  echo "IS NOT EQUAL"
  elif [[ $1 -eq $2 ]]; then
    echo "IS EQUAL"
fi
