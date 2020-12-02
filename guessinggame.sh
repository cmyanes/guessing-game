#!/user/bin/env bash
# File: guessinggame.sh

# checks if the argument is a natural number
# returns true if it is a natural number; false otherwise
function isnumber {
	if [[ $1 =~ ^[0-9]+$ ]]
	then
		echo true
	else
		echo false
	fi
}

# compares two numbers (arguments)
# if $1>$2 returns 1; if $1<$2 returns -1; if $1=$2 returns 0
function compare {
	if [[ $1 -gt $2 ]]
	then
		echo 1
	elif [[ $1 -lt $2 ]]
	then
		echo -1
	else
		echo 0
	fi
}

while  true 
do
	while  true
	do
		read -p "How many files are in the current directory? " n
		if ! $(isnumber $n)
		then
                        echo Incorrect value. You should enter a natural number
		else
			break
		fi
	done

	nfiles=$(ls -1 $PWD | wc -l)
	
	case $(compare $n $nfiles) in
	1)
		echo Your guess was too high. Try again.
		;;
	-1)
		echo Your guess was too low. Try again
		;;
	0)
		echo Congratulations! You guessed it!
		break;;
	esac
done
