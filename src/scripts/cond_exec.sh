#!/usr/bin/env bash

read name
if [[ -z $name ]]; then
  echo "No name entered" >&2
  exit 1
fi


printf "Enter a number not greater than 10:"
read number
if (( number > 10)); then
  printf "%d is too big\n" "$number" >&2
  exit 1
else
  printf "You entered %d\n" "$number"
fi


printf "Enter a number between 10 and 20 inclusive: "
read number
if (( number < 10 )); then
  printf "%d is too low\n" "$number" >&2
  exit 1
elif (( number > 20 )); then
  printf "%d is too high\n" "$number" >&2
  exit 1
else
  printf "You entered %d\n" "$number"
fi
