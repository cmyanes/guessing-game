
README.md: guessinggame.sh
	echo "### Guessing Game" >> $@
	echo "- files: guessinggame.sh" >> $@
	echo "- lines of code: $$(cat guessinggame.sh | wc -l)" >> $@
	echo "<br>" >> $@
	date +"(info updated: %e %b %Y %T %Z)" >> $@



