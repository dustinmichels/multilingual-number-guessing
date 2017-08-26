import java.util.concurrent.ThreadLocalRandom;
import java.util.Scanner;

/***********************
 * Guess.java
 *
 * Dustin Michels
 * August 2017
 ************************/


public class Guess {

    public static void main(String []args) {

        // Initialize variables
        int myNum = ThreadLocalRandom.current().nextInt(1, 101); // random int
        int numGuesses = 0;
        int guess;
        Scanner sc  = new Scanner(System.in);

        // Print welcome message
        System.out.println("Hello! I'm thinking of a number between 1 and 100");
        System.out.println("Can you guess it?");

        do {
            System.out.print("Your guess: ");
            while (!sc.hasNextInt()) {
                System.out.println("Oops! Please enter an integer.");
                System.out.print("Your guess: ");
                sc.next();
            }
            guess = sc.nextInt();
            numGuesses++;
            if (guess > myNum) {
                System.out.println("Lower...");
            } else if (guess < myNum) {
                System.out.println("Higher...");
            }
        } while (guess != myNum);

        System.out.printf("%nYeah! It was %d!%n", myNum);
        System.out.printf("You found the answer in %d guesses.", numGuesses);

     }
}
