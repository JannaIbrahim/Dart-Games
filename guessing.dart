import 'dart:io';
import 'dart:math';

void main() {
  print('Let\'s start the Guessing Game!!!');
  guessingGame();
}

void guessingGame() {
  Random r = new Random();
  int number = r.nextInt(100);
  int a = 0;
  while (true) {
    print('Enter your Guess for a number less than 100: ');
    // var guessIn = stdin.readLineSync();
    // int guess = int.parse(guessIn!);
    var guess = int.parse(stdin.readLineSync()!);
    a++;
    if (guess > 100) {
      print("Try Again");
      continue;
    } else if (guess == number) {
      print("Hurray You got it!!   Attempts: $a");
      break;
    } else if (guess > number)
      print("You are higher");
    else if (guess < number) print("You are lower");
  }
}
