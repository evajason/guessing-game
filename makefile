README.md : guessinggame.sh
	echo "## Guess How Many Files" >> README.MD
	date >> README.md
	echo \
	echo "Number of lines: " >> README.md
	grep -c '' guessinggame.sh >> README.MD
