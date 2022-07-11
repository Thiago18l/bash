#!/usr/bin/env bash

directory=$(find .. -type d -name output)

[ -d "${directory}" ] && cd "${directory}"

if [ -d "$directory" ] && cd "$directory"; then
  echo "Hello from ${PWD}"
fi

case $1 in
  *"$2"*) echo true ;;
  *) echo false ;;
esac

case $1 in
  *[!0-9]*) echo false integer ;;
  *) echo true integer ;;
esac

case $# in
  3) ;;
  *) printf "%s\n" "Please provide three names" >&2
     exit 1
     ;;
esac
