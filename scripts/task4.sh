#!/bin/bash

# Modify your PS1 and make it look like
#   [15:52:13] ~ >
# Where [15:52:13] is timestamp, ~ is your present working directory.
# Put this in ~/.dotfile and execute this dot file safely (only if present) through ~/.bashrc

# start the script
$PS1="\[\e[1;32m\][\t] \[\e[1;34m\]\w\[\e[1;32m\] >\[\e[0m\] "

# save the script in dotfile
echo $PS1 > ~/.dotfile

# execute the script safely
if [ -f ~/.dotfile ]; then
    source ~/.dotfile
fi

# check if the script is executed
echo
echo "Your PS1 is now modified to:"
echo $PS1


$SHELL