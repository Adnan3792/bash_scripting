#!/bin/bash

set -e
read -p "Enter number of terms : " n
a=0
b=1
if((n==1));then
	echo "$a"
else
	echo "$a"
	echo "$b"
	for((i=0;i<n-2;i++))
	do
		c=$((a+b))
		echo "$c"
		a=$b
		b=$c
	
	done
fi

