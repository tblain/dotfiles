#!/bin/bash
# Written by Ethan Toney for CS315 to test a compiled c++ program against all *.in files

OIFS=$IFS
IFS=$(echo -en "\n\b")

FILES="$4*.in"

TIMEOUT=3

case $1 in
	java)
		COMMAND="java -cp '$2.$3'"
	;;
	c++11)
		COMMAND="$2/$3"
	;;
esac

echo $($COMMAND)

for f in $FILES
do
	echo "----- starting $f -----"
	# echo "$(timeout -s 3 $TIMEOUT $COMMAND < $f)"
	echo "$($COMMAND < $f)"
	echo "----- finished -----"
done

IFS=OIFS