readme.txt: guessinggame.sh
	echo "## Bash Guessing Game">README.md
	echo -n "make last run at: ">>README.md
	date >> README.md
	echo "<br/>number of lines in the script= " >> README.md
	cat guessinggame.sh | wc -l >> README.md
