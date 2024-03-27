#!/bin/bash

echo "Starting program at $(date)" # Date will be substituted

# $0 is name of the program
# $$ is process id 
# $# is number of arguments
echo "Running program $0 with $# arguments with pid $$"

# $@ is all the arguments
for file in "$@"; do
    # search for foobar in files. And discard the output
    # 2> is error stream
    grep love "$file" > /dev/null 2> /dev/null

    # check execution status of grep. If its success then its 0, else not 0
    # At the end append foobar 
    if [[ $? -ne 0 ]]; then
        echo "File $file does not have any Shakespeare, adding one"
        echo "\n #Shakespeare" >> "$file"
    fi
done