import 'dart:html';
import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to the game! \nOr type 'Exit' to end.");
  final random = Random();

  Map<String, String> rules = {
    "rock": "scissors",
    "scissors": "paper",
    "paper": "rock"
  };

  int user = 0;
  int computer = 0;

  List<String> options = ["Rock", "paper", "Scissors"];

  while (true) {
    String comChoice = options[random.nextInt(options.length)];
    stdout.write("\nPlease choose Rock,Paper or Scissors\n");
    String userChoice = stdin.readLineSync()!.toLowerCase();

    if (userChoice == "Exit") {
      print("\nYou: $user Computer: $computer\nBye Bye!");
      break;

      // ignore: dead_code
      if (!options.contains(userChoice)) {
        print("Invalid input");
        continue;
      } else if (userChoice == comChoice) {
        print("We have a tie");
      } else if (rules[comChoice] == userChoice) {
        print("Computer wins!");
        computer += 1;
      } else if (rules[userChoice] == comChoice) {
        print("You win!");
        user += 1;
      }
    }
  }
}
