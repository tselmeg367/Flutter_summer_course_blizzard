import 'dart:math';
import 'dart:io';

void main() {
  final random = Random();
  final int randomNumber = random.nextInt(100) + 1;
  print(randomNumber);
  int attempts = 0;
  int guess = 0;
  print('welcome to guess the number!');
  print('i have chosen a number between 1 and 100');
  print('can you guess the number?');

  while (guess != randomNumber) {
    stdout.write('Enter  the Guess');
    String? input = stdin.readLineSync();
    if (input == null) {
      print('Invalid input. Please enter a number');
      continue;
    }
    guess = int.tryParse(input) ?? 0;
    if (guess > randomNumber) {
      print('Too high');
    } else if (guess < randomNumber) {
      print('Too low');
    } else {
      print('Congratulations! You guessed the correct number in $attempts attempts');
    }

    attempts++;
  }
  print('Thanks for playing');
}
