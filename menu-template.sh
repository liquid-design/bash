#!/bin/bash
clear

echo
echo
echo "This is a way to learn bash"
echo "Learn how to use menues and invoke scripts"
echo
echo
echo "1. Get script1"
echo "2. Get script1"
echo "3. Get script1"
echo
echo -n "select menu"
read $selected
echo
echo $selected
echo
echo
case $selected in
	1) ./script1.sh;;
	2) ./script2.sh;;
	3) ./script3.sh;;
	*) echo "please enter a value"
esac
