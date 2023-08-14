#!/bin/bash

while getopts "s:m:" tme;do
	case "$tme" in
		s) second=$OPTARG;;
		m) minute=$(( $OPTARG * 60));;
	esac
done

total_tm=$(($second + $minute))
echo $total_tm


while [ $total_tm -gt 0 ]; do
	echo $total_tm
	sleep 1s
	total_tm=$((total_tm - 1))
done

#echo $total_tm
