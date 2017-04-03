#!/bin/bash
#this is a simple guessing game

echo "guess my favourite animal."

flag=""
repeat="please try again"
ee=$(echo "$repeat")

echo "$ee"

select answer in "cat" "dog" "fish" "human"
do
	case $answer in
		cat) flag="right"; echo "$flag"; break;;
		dog) echo "$repeat";;
		fish) echo "$repeat";;
		human) echo "$repeat";;
	esac
done
