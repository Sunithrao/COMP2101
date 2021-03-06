#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############
name="$USER",
myarray=(professor boss student don finalboss)
date=$(date +'%H:%M %p' |$myarray_index)
hostname=$(hostname)
weekday=$(date +%u)
myarray_index=$((RANDOM % ${#myarray[0]}))

###############
# Main        #
###############
cat <<EOF
Welcome to planet $hostname, $name!
if [ "$weekday" = "6" ] || [ "$weekday" = "7" ]
then
   echo "It is $date  a Weekend."
else
   echo "It is $date a Weekday."
fi
EOF
