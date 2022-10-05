#! /bin/sh
if [ -z "$1" ] || [ -z "$2" ]
then
	echo "Invalid input"
elif [ "$1" -le 0 ] || [ "$2" -le 0 ]
then
	echo "Input must be greater than 0"
else
	for i in $(seq $1)
	do
		for j in $(seq $2)
		do
			result=`expr $i \* $j`
			output="$i*$j=$result"
			printf "%-12s" $output
		done
		printf "\n"
	done
fi
exit 0
