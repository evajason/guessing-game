#!/usr/bin/env bash

files=$(ls -1 | wc -l)
echo "How many files do you think are in this directory?"
function ask {
	read guess
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]]
	then
		echo "Your guess was too low, try again."
	else
		echo "Your guess was too high, try again."
	fi
	ask
done

echo "Congratulations! You got it! There are $files files in this directory"




