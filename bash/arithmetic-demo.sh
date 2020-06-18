#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variabsles. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Input a 1 ? " firstnum #Getting three numbers by validating a read command
read -p "Input a 2 ? " secondnum #Getting three numbers by validating a read command
read -p "Input a 3 ? " thirdnum #Getting three numbers by validating a read command
sum=$((firstnum + secondnum + thirdnum)) #Assigning a variable for getting an addition of three numbers
product=$((firstnum * secondnum * thirdnum)) #Assigning variable for getting addition of product of three numbers

cat <<EOF
The sum of $firstnum , $secondnum and $thirdnum numbers are $sum .
The product of $firstnum , $secondnum and $thirdnum numbers are $product .
EOF
