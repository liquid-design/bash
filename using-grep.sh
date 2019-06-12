#!/bin/bash

# Use grep in your workflow

# first list the filenames
find -type f -exec ls -la {} \;

echo "Enter filename to search on"
read filename

if [[ -f $filename ]]
then
	echo "Enter the text to search on"
	read grepvar
	# -i remove case sensitivity
	# -n display linenumbers
	grep -i -n $grepvar $filename
	
else
	 echo "filename does not exist"	 
fi
