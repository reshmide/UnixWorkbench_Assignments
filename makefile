readme.md: guessinggame.sh
	echo "Project Title: GuessingGame" >> readme.md
	echo "Date:"$(shell date) >> readme.md
	echo "Line Count:"$(shell cat ./guessinggame.sh| wc -l) >> readme.md

clean:
	rm readme.md
