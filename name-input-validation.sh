#!/bin/bash
clear

echo
echo
echo "This is a way to learn bash with input validation"
echo
echo -n "First Name"
read $first_name
echo

# Check for invalid input
if [ -z $first_name];then
	echo "Please enter your first name"
	exit
fi

echo -n "Last Name"
read $last_name
echo

# Check for invalid input
if [ -z $last_name];then
	echo "Please enter your first name"
	exit
fi

echo "You entered the values:"
echo "First Name" $first_name
echo "Last Name" $last_name
echo
