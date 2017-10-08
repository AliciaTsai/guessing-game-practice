#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
	echo "Guess the number of files in your current directory and then press Enter:"
	read guess
	local files_number=$(ls | wc -l)

	while [[ $guess -ne files_number ]]
	do 
		if [[ $guess -gt files_number ]]
		then
			echo "Your guess is too high."
			echo "Guess again and then press Enter:"
			read guess
		elif [[ $guess -lt files_number ]]
		then
			echo "Your guess is too low."
			echo "Guess again and then press Enter:"
			read guess
		fi
	done

	if [[ $guess -eq files_number ]]
	then 
		echo "Congratulations! Your current directory has $guess files."
	fi
}

guessinggame