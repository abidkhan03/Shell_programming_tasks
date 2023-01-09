#!/bin/bash

# Box print a string through script
# $ ./box_print.sh THIS STRING
# Should print
# ***************
# * THIS STRING *
# ***************

# take string input in shell while executing the script
STRING=$1

for (( i=0; i<=${#STRING} +3; i++ )); do
    echo -n "*"
done

echo

echo "* $STRING *"

for (( i=0; i<=${#STRING} +3; i++ )); do
    echo -n "*"
done



$SHELL


