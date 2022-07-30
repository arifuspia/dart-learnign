import 'dart:io';
import 'dart:math';

enum Move {
  rock,
  paper,
  scissors,
}

void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, Paper or Scissors? (r/p/s) : ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      final aM = aiMove.toString().split('.').last;
      String pM = playerMove.toString().split('.').last;
      print('Your Move : $pM');
      print('AI move : $aM');
      if (playerMove == aiMove) {
        print('It\'s a Draw');
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.scissors && aiMove == Move.paper ||
          playerMove == Move.paper && aiMove == Move.rock) {
        print('You Win!');
      } else {
        print('You Loss The Game, Try Later');
      }
    } else if (input == 'q') {
      break; // break
    } else {
      print('Invalid Input');
    }
  }

  // while true
  // show prompt
  // Read user input from console
  // if input is a valid move ("r", "p", "s")
  //    choose the AI move at random
  //    compare the player's move to the AI's move
  //    show the result
  // else if input is "q"
  //    Quit the program
  // else
  //    Invalid input
}
