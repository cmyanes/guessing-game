
README.md: guessinggame.sh
	echo "###Guessing Game###" > $@
	echo - title of the project: *Guessing Game* >> $@   

	echo "- number of lines of code (guessinggame.sh file): $$(cat guessinggame.sh | wc -l)" >> $@   

	date +"(this info  was last updated: %e %b %Y %T %Z)" >> $@



