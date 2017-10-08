all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "### The title of the project:" >> README.md
	echo "Guessing Game" >> README.md
	echo "\n### Description:" >> README.md
	echo "Ask the user to guess the number of files in their current directory." >> README.md
	echo "\n### The information of make:" >> README.md
	ls -l | egrep 'README' >> README.md
	echo "\n### The number of lines of code contained in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh >> README.md