import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ect/Model/globals.dart' as globals;
import 'package:ect/Widgets/styled_button.dart';

getRandomArrow() {
  Random random = Random();
  int choice = random.nextInt(2);
  // Set the arrow icon based on the chosen choice
  IconData iconData = choice == 0 ? Icons.arrow_back : Icons.arrow_forward;
  Icon res = Icon(
    iconData,
    size: 50,
    color: getRandomRedOrGreenColor(),
  );
  return res;
}

Color getRandomRedOrGreenColor() {
  Random random = Random();

  // Generate a random number (0 or 1) to choose between red and green
  int choice = random.nextInt(2);

  // Set the color component values based on the chosen color
  int red = choice == 0 ? 255 : 0;
  int green = choice == 1 ? 255 : 0;
  int blue = 0; // Set blue to 0 for a pure red or green color

  // Create a Color object using the chosen color components
  Color color = Color.fromARGB(255, red, green, blue);
  return color;
}

String getRandomPhoto() {
  final List<String> photoAssets = [
    'assets/images/arrows2.png',
    'assets/images/rainbow2.jpeg'
  ];

  Random random = Random();
  int randomIndex = random.nextInt(photoAssets.length);
  return photoAssets[randomIndex];
}

void checkAnswer() {
  globals.centerImage = 'assets/gifs/black.gif';
  globals.centerArrow = const Icon(
    Icons.arrow_forward,
    color: Colors.black,
  );
}

void handleCenterButtonPressUp() {
  globals.stopwatchD.stop();
  globals.time3 = globals.stopwatchD.elapsed;
  globals.realeseHoldButtonTimes.add(globals.time3);
  globals.stopwatchR.reset();
  globals.stopwatchR.start();
  print(globals.realeseHoldButtonTimes);
}

void handleCenterButtonPressDown() {
  Timer(const Duration(seconds: 3), () {
    globals.pressedButton = true;
    globals.stopwatchD.reset();
    globals.stopwatchD.start();
  });
  // Timer(const Duration(seconds: 2), () {
  //   globals.centerArrow = getRandomArrow();
  //   globals.centerImage = getRandomPhoto();
  // });
  // print(globals.responseTimes);
}

void handleOneOfTheCirclesIsPressed() {
  // globals.pressedButton = false;
  globals.stopwatchR.stop();
  // globals.stopwatchD.stop();
  globals.time3 = globals.stopwatchR.elapsed;
  globals.responseTimes.add(globals.time3);

  print(globals.responseTimes);
}

StyledButton createButton(Function func, Color c) {
  return StyledButton(
      onPressed: () {
        globals.pressedButton = false;
        handleOneOfTheCirclesIsPressed();
        globals.centerImage = 'assets/gifs/black.gif';
        globals.centerArrow = const Icon(
          Icons.arrow_forward,
          color: Colors.black,
        );
      },
      clr: c);
}
