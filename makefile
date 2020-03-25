README.md : guessinggame.sh
	echo "## Guess How Many Files" >> README.MD
	date >> README.md
	echo -n "\nNumber of lines: " >> README.md
	grep -c '' guessinggame.sh >> README.MD
