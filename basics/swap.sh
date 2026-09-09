#!/bin/bash

set -e

read -p "Enter first number before swapping : " a
read -p "Enter second number after swapping : " b
a=$((a^b))
b=$((a^b))
a=$((a^b))
echo "After swapping first number : $a" 
echo "After swapping second number : $b"
