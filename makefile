all: create_readme 

create_readme:
	touch README.md
	echo "Guess the Files count" >> README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md 
clean: 
	rm README.md
