#!/usr/bin/env bash

echo \ this "is a" 'demonstration of' \ quotes\ and\ escapes


# Brace expansion

echo {one,two,three}

echo {1..10}

echo {a..e}

echo pre{d,l}ate

echo {{1..3}},{{a..c}}

echo {01..13..3}

echo {a..h..3}

# Til expansion
echo ~


echo ~root ~lionheart

# Parameter and Variable expansion

var=something
echo ${var}

first_name=thiago
last_name=lopes

echo ${first_name} "${first_name}_$last_name" 2>/dev/null
