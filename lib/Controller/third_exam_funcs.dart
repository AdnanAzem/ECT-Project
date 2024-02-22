import 'dart:math';

import 'package:ect/View/third_exam/end_third_test_screen.dart';
import 'package:ect/View/third_exam/templatesFA_first_version.dart';
import 'package:ect/View/third_exam/third_exam_screen.dart';
import 'package:ect/Widgets/fixed_position.dart';
import 'package:ect/Model/globals.dart' as globals;
import 'package:get/get.dart';
// import 'package:word_generator/word_generator.dart';


checkAnswer(String word) {
  if (word.contains('a')) {
    globals.score3++;
    globals.stopwatchFA.stop();
    globals.time3 = globals.stopwatchFA.elapsed;
    globals.roundTimesFA.add(globals.time3);
    globals.roundsBoolFA.add(true);
    Get.offAll(const FindingA());
    globals.gameNumber--;
    if (globals.gameNumber == 0) {
      globals.roundTimesFA.add(globals.time3);
      Get.offAll(const EndOfThirdTest());
    }
  } else {
    globals.roundsBoolFA.add(false);
    if (globals.numOfWrongAnswers3 > 0) {
      globals.roundTimesFA.add(globals.time3);
      globals.numOfWrongAnswers3--;
    } else {
      globals.roundTimesFA.add((globals.time3));
      Get.offAll(const EndOfThirdTest());
    }
  }
}

List<String> generateWordsWithA(int count) {
  List<String> words = [];
  Random random = Random();
  if (globals.versionFA == 1) {
    for (int i = 0; i < count; i++) {
      int length = random.nextInt(3) + 3; // Random length between 3 to 5
      String word = generateWordWithA(length);
      words.add(word);
    }
  } else {
    for (int i = 0; i < count; i++) {
      int length = random.nextInt(5) + 5; // Random length between 7 to 9
      String word = generateWordWithA(length);
      words.add(word);
    }
  }

  return words;
}

String generateWordWithA(int length) {
  Random random = Random();
  String vowels = 'aeiou';
  String consonants = 'bcdfghjklmnpqrstvwxyz';
  String word = '';

  // Add 'a' at least once in the word
  word += 'a';
  length--;

  // Fill the rest of the word randomly
  for (int i = 0; i < length; i++) {
    word += random.nextBool()
        ? consonants[random.nextInt(consonants.length)]
        : vowels[random.nextInt(vowels.length)];
  }

  return word;
}

List<String> generateWordsWithoutA(int count) {
  List<String> words = [];
  Random random = Random();
  if (globals.versionFA == 1) {
    for (int i = 0; i < count; i++) {
      int length = random.nextInt(3) + 3; // Random length between 3 to 5
      String word = generateWordWithoutA(length);
      words.add(word);
    }
  } else {
    for (int i = 0; i < count; i++) {
      int length = random.nextInt(5) + 5; // Random length between 3 to 5
      String word = generateWordWithoutA(length);
      words.add(word);
    }
  }

  return words;
}

String generateWordWithoutA(int length) {
  Random random = Random();
  String vowels = 'eiou';
  String consonants = 'bcdfghjklmnpqrstvwxyz';
  String word = '';

  // Fill the word randomly without including 'a'
  for (int i = 0; i < length; i++) {
    word += random.nextBool()
        ? consonants[random.nextInt(consonants.length)]
        : vowels[random.nextInt(vowels.length)];
  }

  return word;
}

List<FixedPosition> chooseRandomTemplateFA1() {
  // List<int> temp = [
  //   1,
  //   2,
  //   3,
  //   4,
  //   5,
  // ];
  // final randomTemplate = Random();
  List<FixedPosition> tempA = [];
  tempA = TemplatesFA1.firstTemplateFA();
  List<FixedPosition> ans = tempA;
  return ans;
}

List<FixedPosition> chooseTemplate(int x) {
  return (chooseRandomTemplateFA1());
}
