import 'dart:io';
import 'dart:math';
import 'dart:core';

main() {
  List enemy = ["stone", "paper", "scissors"];
  greekMain:
  while (true) {
    int enemyChoose = Random().nextInt(3);
    stdout.write("Neyi secmek isteyirsiniz: ");
    String? yourChoose = stdin.readLineSync();
    yourChoose = yourChoose.toString().toLowerCase().replaceAll(' ', '');
    if (yourChoose == "stone" ||
        yourChoose == "paper" ||
        yourChoose == "scissors") {
      if ((enemy[enemyChoose] == "paper" && yourChoose == "stone") ||
          (enemy[enemyChoose] == "stone" && yourChoose == "scissors") ||
          (enemy[enemyChoose] == "scissors" && yourChoose == "paper")) {
        print("Reqib qalib geldi...");
        print("*******************************");
      } else if ((yourChoose == "paper" && enemy[enemyChoose] == "stone") ||
          (yourChoose == "stone" && enemy[enemyChoose] == "scissors") ||
          (yourChoose == "scissors" && enemy[enemyChoose] == "paper")) {
        print("Siz qalib geldiniz...");
        print("*******************************");
      } else {
        print("Hec-hece qaldiniz...");
        print("*******************************");
      }
      greek:
      while (true) {
        stdout.write("Yeniden oynamaq isteyirsiniz? y or n: ");
        String? answer = stdin.readLineSync();
       if (answer == "y") {
          continue greekMain;
        } else if (answer == "n") {
          break greekMain;
        } else {
          print(
              "Siz yanlish cavab daxil etdiniz, xaish edirik yeniden daxil edesiniz....");
        }
      }
    } else {
      print("yanlish sechim etdiniz, xaish yeniden sechim edesiniz...");
      continue greekMain;
    }
  }
}
