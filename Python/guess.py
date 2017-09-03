"""
Number guessing game for Python 3.6+

Generates a (pseudo)random number between 1 and 100, then prompts
the user for guesses until the correct number is found.

Run from the command line by typing: `python3 guess.py`.

Dustin Michels
August 2017
"""


import random


my_num = random.randrange(1, 100)
guess_count = 0

print("\nHello! I'm thinking of a number between 1 and 100. Can you guess it?")

while True:
    guess = input('Your guess: ')

    try:
        guess = int(guess)
    except ValueError:
        print('Oops! Your guess must be an integer between 1 and 100!')

    if guess < my_num:
        print('Higher...')
        guess_count += 1
    elif guess > my_num:
        print('Lower...')
        guess_count += 1
    else:
        print(f'Yeah!! It was {my_num}! Nice job!')
        print(f'You got the right answer in {guess_count} guesses.\n')
