
README.md: guessinggame.sh
	echo - ***Guessing Game*** >> $@ <br>
	echo "- lines of code: $$(cat guessinggame.sh | wc -l)" >> $@ <br>
	date +"(info updated: %e %b %Y %T %Z)" >> $@



