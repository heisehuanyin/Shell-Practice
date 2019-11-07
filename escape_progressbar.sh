#!/bin/sh

step_number=`stty size|awk '{print $2}'`;
step_number=`expr $step_number - 7`

readonly step_number;

for ((i=0; i<=$step_number; i++))
do
	sleep 0.1s
	print_string=':'$i' ';

	for ((j=0; j<=$step_number; j++))
	do
		if [[ $i -lt $j ]];
		then
			print_string=$print_string'-'
		else
			print_string=$print_string'>'
		fi
	done

	echo '\r'$print_string'\c'
done
echo '\ndone'
