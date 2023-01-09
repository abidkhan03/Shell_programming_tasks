#!/bin/bash

# Task 6
# In last task (Task 5), pass arguments (through flags), like
# $ ./box_print.sh -s "THIS STRING" -c "+"
# The above example prints it
# +++++++++++++++
# + THIS STRING +
# +++++++++++++++
# Passing nothing as a character (no -c ) will only print the string
# THIS STRING

# take string input in shell while executing the script as -s
STRING=$1
# take character input in shell while executing the script as -c
CHAR=$2

for (( i=0; i<=${#STRING}+3; i++ )); do
    echo -n "$CHAR"
done

echo

echo "$CHAR $STRING $CHAR"

for (( i=0; i<=${#STRING} +3; i++ )); do
    echo -n "$CHAR"
done
echo

$SHELL