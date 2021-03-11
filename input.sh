#! /bin/bash

# ./input.sh input1 input2 input3
echo $1 $2 $3

# ./input.sh input1 input2 input3
echo $0 $1 $2 $3

# array
args=("$@") # -> this way we can have Unlimited argments

echo ${args[0]} ${args[1]} ${args[2]}

echo $@ # -> print all the elements of the array

echo $# # -> get the length of the array

###################################################
# Read from a file

while read line
do
    echo "$line"
done < "${1:-/dev/stdin}"
