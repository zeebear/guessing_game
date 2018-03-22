all: readme title date lines

readme:
	touch README.md

title:
	echo "# Guessing Game" >> README.md
	echo "## An Assignment in Bash, Make, Git, and GitHub" >> README.md
	echo "" >> README.md

date:
	echo "**Make was run at the following time:**" >> README.md
	ls -ul README.md | egrep -o "[A-Z].+:\d{2}\s" >> README.md
	echo "" >> README.md

lines: guessinggame.sh
	echo "**guessinggame.sh contains the following amount of lines:**" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
