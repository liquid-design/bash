#!/bin/bash
# simple menu by selection
select var in A B C D
do

	echo "you have selected $var"

done

#!/bin/bash
# menu by selection while using case
select var in A B C D
do
	case $var in
		A)
			# Somehow the ;; to end the case is important
			echo "you have selected A";;
		B)
			echo "you have selected B";;
		C)
			echo "you have selected C";;
		D)
			echo "you have selected D";;
		# escaping from invalid selection	
		*)
			echo "You have to select A..D";;
	esac
done

#!/bin/bash
# invoke other scripts with selection
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
	1) ./name-input-validation.sh;;
	2) ./script2.sh;;
	3) ./script3.sh;;
	*) echo "please enter a value"
esac
