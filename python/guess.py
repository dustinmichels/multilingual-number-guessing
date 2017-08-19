"""
Simple number guessing game for python 3.6+
Run from terminal with 'python3 guess.py'

Dustin Michels
August 2017
"""


import random


def main():
    """Generates a (pseudo)random number between 1 and 100, then prompts
    the user for guesses until the correct number is found."""

    secret_num = random.randrange(1, 100)
    num_guesses = 0

    print('\nHello! I\'m thinking of a number between 1 and 100. Can you guess it?')

    while True:
        guess = input('Your guess: ')

        try:
            guess = int(guess)
        except ValueError:
            print('Oops! Your guess must be an integer between 1 and 100!')

        if guess < secret_num:
            print("Higher...")
            num_guesses += 1
        elif guess > secret_num:
            print("Lower...")
            num_guesses += 1
        else:
            print(f'Yeah!! It was {secret_num}! Nice job!')
            print(f'You got the right answer in {num_guesses} guesses.\n')
            return


if __name__ == "__main__":
    main()