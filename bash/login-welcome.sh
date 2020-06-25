#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
un="$USER" #To get a random username by making use of a environmental variable 
hostname="$(hostname)" #Similar  used to get dynamic hostname
day=$(date +%A) #specifying day from week through date command
currenttime=$(date +%I:%M\ %p) #Getting accurete date by using date command

###############
# Main        #
###############
if [ "$day" = Monday ];then #Testing a day name and printing particular line with it by using if else condition
cows="Welcome to planet $hostname, MOtivational $un!"
elif [ "$day" = Tuesday ];then
cows="Welcome to planet $hostname, Terrific $un!"
elif [ "$day" = Wednesday ];then
cows="Welcome to planet $hostname, Warmy $un!"
elif [ "$day" = Thursday ];then
cows="Welcome to planet $hostname, Thoughful $un!"
elif [ "$day" = Friday ];then
cows="Welcome to planet $hostname, Funny $un!"
elif [ "$day" = Saturday ];then
cows="Welcome to planet $hostname, Beautiful $un!"
else;cows="Welcome to planet $hostname, Sunny $un!"
fi
cowsay "$cows It is $currenttime on $day ."
