#!/bin/bash

# function if a file exist

usage() {
	echo "You need to pass an argument :"
	echo "usage : $0 file_name"   # $0 is the filename of this script
}


is_file_exist() {

	local file="$1" # take the 1st argument from the shell
	[[ -f "$file" ]] && return 0 || return 1 # if file exist then 1 or 0 AND 
} 

[[ $# -eq 0 ]] && usage

if ( is_file_exist "$1")
then 
	echo "File found"
else
	echo "File not found"
fi

