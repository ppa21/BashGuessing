#!/bin/bash
#lynda bash scripting tutorial
flashred=$(tput setab 0; tput setaf 1; tput blink)
red=$(tput setab 0; tput setaf 1)
none=$(tput sgr0)

echo -e $flashred"ERROR:"$none$red"Something went wrong."$none

today=$(date +"%d-%m-%y")
time=$(date +"%H:%M:%S")
printf -v d "Current User:\t%s\n Date:\t\t%s @ %s\n" $USER $today $time
echo "$d"

a=()
b=("apple" "banana" "cherry")

echo ${b[2]}

cat<<EndOfText
