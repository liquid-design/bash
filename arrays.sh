#!/bin/bash

var=('A' 'B' 'C' 'D')

# Output: A B C D
echo "${var[@]}"

# Output: B
echo "${var[1]}"

# Output: 0 1 2 3
echo "${!var[@]}"

# Output: 4 
echo "${#var[@]}"

# Output: 1 2 3
unset var[3]

var[3]='E'

# Output: A B C E
echo "${var[@]}"
