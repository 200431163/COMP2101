#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

referenceString="Password" #Creating variable to store generated password
read -s -p "Enter secret text:" myString #Asking passsword as a silent input by user by storing it in string format
echo
if [ $myString = $referenceString ]; then #Again here using if else condition whether the input for password is valid or not
  echo "You are right."
  echo
else
  echo "Try something else.."
  read -s -p "Enter secret text:" myString
 if [ $myString = $referenceString ]; then
   echo "You are right."
   echo
 else
   echo
   echo "Try something else.."
   read -s -p "Enter secret text:" myString
 if [ $myString = $referenceString ]; then
   echo "You are right."
   echo
 else
   echo
   echo "Try something else.."
   read -s -p "Enter secret text:" myString
	if [ $myString = $referenceString ]; then
  echo "You are right."
  echo
else
  echo "Try something else.."
  read -s -p "Enter secret text:" myString
 if [ $myString = $referenceString ]; then
  echo "You are right."
  echo
else
  echo "No next try allowed."
fi
fi
fi
fi
fi
# ending a condition