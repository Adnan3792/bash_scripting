#!/bin/bash


set -e

read -p "Enter any number: " num

sum=0
original=$num
while((num>0));
do
	rem=$((num%10))
	sum=$((sum+rem*rem*rem))
	num=$((num/10))
done
if((sum==original));
then
	echo "$original is an armstrong number"
else
	echo "$original is not an armstrong number"
fi
	
