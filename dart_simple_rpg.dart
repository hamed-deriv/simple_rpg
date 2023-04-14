import 'dart:math';

import 'package:dart_simple_rpg/helper.dart';

void main() {
  String playerName = prompt('Enter your name: ');
  print('Welcome to the game, $playerName!');

  int playerHealth = 100;
  int playerStrength = 10;
  String playerNameString = playerName;

  int monsterHealth = 50;
  int monsterStrength = 5;
  String monsterName = 'Dragon';

  bool isRunning = true;

  print('Your opponent is $monsterName.');

  while (isRunning) {
    print('What do you want to do? (attack/heal)');

    String choice = prompt('> ');

    switch (choice.toLowerCase()) {
      case 'attack':
      case 'a':
        int damage = playerStrength + Random().nextInt(10);
        monsterHealth -= damage;
        print(
          '$playerNameString attacked $monsterName and deals $damage damage!',
        );
        print('$playerNameString has $playerHealth health points left.');
        print('$monsterName has $monsterHealth health points left.');
        break;
      case 'heal':
      case 'h':
        playerHealth += 10;
        playerHealth = playerHealth > 100 ? 100 : playerHealth;
        print('$playerNameString healed 10 health points!');
        print('$playerNameString has $playerHealth health points left.');
        break;
      default:
        print('Invalid choice. Try again.');
    }

    if (monsterHealth <= 0) {
      print('Congratulations, $playerName! You won!');
      isRunning = false;
    } else {
      int damage = monsterStrength + Random().nextInt(5);
      playerHealth -= damage;
      print(
        '$monsterName attacked $playerNameString and deals $damage damage!',
      );
      print('$playerNameString has $playerHealth health points left.');

      if (playerHealth <= 0) {
        print('Sorry, $playerName. You lost.');
        isRunning = false;
      }
    }
  }

  print('Thanks for playing!');
}
