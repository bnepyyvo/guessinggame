all: README.md

README.md:
	touch README.md
	echo "## Guessing game" >README.md
	echo "Make was run on:" >>README.md
	date >>README.md
	echo '<br />' >>README.md
	echo "Number of lines of code in guessinggame.sh:" >>README.md
	wc -l < guessinggame.sh >>README.md

