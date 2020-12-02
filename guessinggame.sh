#!/user/bin/env bash
# File: guessinggame.sh

# checks if the argument is a natural number
# returns 0 if it's a number; 1 otherwise


while  true 
do
	while  true
	do
		read -p "How many files are in the current directory? " n

		# check if the argument is a natural number
		if [[ $n =~ ^[0-9]+$ ]]
		then
			break
		else
			echo Incorrect value. You should enter a natural number
			echo ""
		fi
	done

	nfiles=$(ls -1 $PWD | wc -l)

	if [[ $n -eq $nfiles ]]
	then
		echo Congratulations! You guessed it!
		break
	elif [[ $n -gt $nfiles ]]
	then
		echo Your guess was too high
	else
		echo Your guess was too low
	fi
	echo Try again!
	echo ""
done









			
















