# include <stdio.h>
# include <stdlib.h>
# include <time.h>
# include <ctype.h>
#include <errno.h>

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

	do {
		printf("\nPlease enter your guess: ");

		if (fgets(input, sizeof(input), stdin) != NULL) {

			// reset errno
			errno = 0;

			// convert string to int
			// If successful, check number.
			guess = strtol(input, NULL, 10);
			if (errno == EINVAL) {
				printf("Oops! That doesn't look valid!\n");
			} else {
				checkNumber(guess, num);
			}
		}
	} while (guess != num);

	return 0;
}

void checkNumber(int guess, int num) {

	if (guess < num) {
		printf("Higher than %d...\n", guess);
	} else if (guess > num) {
		printf("Lower than %d...\n", guess);
	} else if (guess == num) {
		printf("Yeah! It was %d!\n\n", num);
	}
}
