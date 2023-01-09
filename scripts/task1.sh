#!/bin/bash

# write a shell script to search a file in a give folder
# ~$ ./task1.sh <search_file> <folder>

# for example
# ~$ ./task1.sh test.txt /home/username
# should output searching every single occurence of test.tx by using depth first search

for file in $(find $2 -type f -name $1); do
    if [ -f $file ]; then
        echo "-----------------"
        echo "file found: $file"
        echo "-----------------"
        echo "file content:"
        echo "-----------------"
        cat $file
        echo
    else
        echo "file not found"
    fi

done

$SHELL
