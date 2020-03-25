README.md : guessinggame.sh
	echo "## Guess How Many Files" >> README.md
	date >> README.md
	echo "<br>Number of lines: " >> README.md
	grep -c '' guessinggame.sh >> README.md
