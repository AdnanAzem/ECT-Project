//import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ect/Model/globals.dart' as globals;

//List<String> res=shuffled();
int final_answer = 0;

List<String> generateRandomNumber(int flag) {
  final random = Random();
  List<String> str = [];
  int num;
  if (flag == 1) {
    for (int i = 0; i < 7; i++) {
      num = (1000 + random.nextInt(9000));
      str.add(num.toString());
    }
  } else {
    for (int i = 0; i < 7; i++) {
      num = (100000 + random.nextInt(900000));
      str.add(num.toString());
    }
  }
  return str;
}

extension Shuffle on String {
  /// Strings are [immutable], so this getter returns a shuffled string
  /// rather than modifying the original.
  String get shuffled => (split('')..shuffle()).join('');
}

int choosen_index_to_shuffle() {
  final random = Random();

  int randomNumber1 = (random.nextInt(7));
  print("the number is:" + randomNumber1.toString());
  return randomNumber1;
}

int get_choosen_index_to_shuffle() {
  // String corr=res.last;
  // var correct=  int.parse(corr);
  return final_answer;
}

set_choosen_index_to_shuffle(int n) {
  final_answer = n;
}

List<String> shuffled() {
  List<String> original = generateRandomNumber(globals.versionNC);
  int corrAnswer = choosen_index_to_shuffle();
  set_choosen_index_to_shuffle(corrAnswer);
  List<String> res = [];

  for (int i = 0; i < original.length; i++) {
    if (corrAnswer == i) {
      res.add(original.elementAt(i).shuffled);
      res.add(original.elementAt(i));
    } else {
      res.add(original.elementAt(i));
      final random = Random();
      int randomNumber = (1 + random.nextInt(49));
      var n = int.parse(original.elementAt(i).shuffled) + randomNumber;
      res.add(n.toString());
    }
  }
  res.add(corrAnswer.toString());
  return res;
}

gotcorrectanswer() {
  globals.score4++;
  globals.stopwatch4.stop();
  globals.time4 = globals.stopwatch4.elapsed;
  globals.roundsTimesNC.add(globals.time4);
  globals.roundsBoolNC.add(true);
  globals.numOfGames4--;

  print(globals.time4);
}

gotwronganswer() {
  globals.roundsTimesNC.add(globals.time4);
  globals.roundsBoolNC.add(false);
  print('wrong:' + globals.time4.toString());
  // globals.numOfWrongAnswers4--;
  globals.numOfGames4--;
  globals.wrongAnswersML++;
  //Get.offAll(const NumberComparison());
}

whenUpdate4() {
  globals.roundsTimesNC.add(globals.time4);
  globals.roundsBoolNC.add(false);
  globals.wrongAnswersML++;
}
