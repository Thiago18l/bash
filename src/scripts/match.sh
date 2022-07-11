#!/usr/bin/env bash

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

string=whatever
[[ $string =~ h[aeiou] ]] && echo "MATCH" && echo $(isFalse $?)

[[ $string =~ h[sdfghjkl] ]] && echo "MATCH" || echo $(isFalse $?)
