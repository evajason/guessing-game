#!/usr/bin/env bash
files=$(ls -1a | wc -l)
echo "How many files do you think are in this directory?"

function ask {
	read guess
	if [[ ! $guess =~ ^[0-9]+$ ]]
	then 
		echo "Please enter a number"
		ask
	fi
}

function try {
	ask
	while [[ $guess -ne $files ]]
		do	
		if [[ $guess -lt $files ]]
		then
			echo "Your guess was too low, try again."
		elif [[ $guess -gt $files ]]
		then
			echo "Your guess was too high, try again."
		else
			echo "Try again"
		fi
		ask
		done
		echo "Congratulations! You got it! There are $files files in this directory"
}
try
