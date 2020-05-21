#!/usr/bin/env bash

function question {
	echo "How many files are in the directory?"
	read answer
}

question

files=$(ls -1 | wc -l)

while [[ $answer -ne $files ]]
do
	if [[ $answer -lt $files ]]
	then
		echo "There is more than" $answer "files"
	else
		echo "There is less than" $answer "files"
	fi
	question
done

echo "Right."

read -n1 -p "Press any key to exit."
exit