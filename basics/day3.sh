#!/bin/bash

set -e

read -p "Enter any number: " num

if((num<2));
then
	echo "$num is not a prime number"
	exit 0
fi

flag=0

for((i=2;i<=num/2;i++));
do
	if((num%i==0))
	then
		flag=1
		break
	fi
done

if((flag==0));
then
	echo "$num is a prime number"
else
	echo "$num is not a prime number"
fi
