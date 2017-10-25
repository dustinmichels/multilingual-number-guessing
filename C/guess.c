# include <stdio.h>
# include <stdlib.h>
# include <time.h>
# include <ctype.h>

# define BUFFER 100

int readGuess();
void checkNumber();

int main() {
	int num, guess, max_size;
	char input[BUFFER];
	char *end;;

	// Set max size of random number
	max_size = 101;

	// Generate random num (not the optimal way...)
	srand(time(NULL));
	num = rand() % max_size;

	// Print welcome message
	printf("Hi! I'm thinking of a number between 0 and 100. ");
	printf("Can you guess it??\n");

	// Temp
	printf("...................The random number is: %d\n", num);

	do {
		printf("\nPlease enter your guess: ");

		if (fgets(input, sizeof(input), stdin) != NULL) {
			printf("->input: %s\n", input);

			// convert string to int
			guess = strtol(input, NULL, 10);
			printf("->guess: %d\n", guess);

			checkNumber(guess, num);
		}

	} while (guess != num);

	return 0;
}

void checkNumber(int guess, int num) {

	printf("guess: %d\n", guess);

	if (guess < num) {
		printf("Higher...\n");
	} else if (guess > num) {
		printf("Lower...\n");
	} else if (guess == num) {
		printf("Yeah! It was %d!\n\n", num);
	}
}
