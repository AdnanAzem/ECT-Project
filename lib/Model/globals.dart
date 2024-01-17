library globals;

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String name = '';
String iD = '';
String age = '';
String gender = '';
List<List<dynamic>> data = [];
List<String> genderList = ['male', 'female'];

// first exam
int sideTemp = -1; // the correct side of the first exam.
List<int> roundSides = [];
List<double> roundsTimes = [];
List<bool> roundCorrectness = [];
int click = 0; // num of answers first exam.
int score1 = 0; // num of correct answers first exam.
double init = 60;
double time1 = 60; // milliseconds.
int numOfWrongAnswers1 = 2;

// second exam
int score2 = 0; // num of correct answers second exam.
List<bool> roundsBool = [];
List<Duration> rountimes = [];
int gamesTimes = 0;
int numOfWrongAnswers2 = 1;
int numOfGames = 5; // num of games before ending second exam (correct answers).
Duration time2 = const Duration(
    seconds:
        0); // the time passed from when the student saw the cards until he pressed a button.
int version = 1; // Double game version 1 or 2.
int leftOrRight = 0; // 1 left 2 right
int numClickOnRight = 0;
IconData icon = Icons.abc;
final stopwatch = Stopwatch();

// third exam
Timer? holdTimer;
Timer? apearTimer;
bool isHoldingDone = false;
bool pressedButton = false;
String blackImg = 'assets/gifs/black.gif';
String veryGoodImg = 'assets/gifs/goodjob.gif';
String wrongImg = 'assets/gifs/wronganswer.gif';
Color containerColor = Colors.grey;
int index = 0;
String answer = '';
Color lefttCircleColor = Colors.black;
Color rightCircleColor = Colors.black;
String centerImage = 'assets/gifs/black.gif';
Color arrowColor = Colors.black;
Icon centerArrow = const Icon(
  Icons.arrow_forward,
  color: Colors.black,
);
Duration time3 = const Duration(seconds: 0);
List<Duration> responseTimes = [];
List<Duration> realeseHoldButtonTimes = [];
// bool lightTurn = false; // the lights in the third test.
// Map<int, Duration> detectionTimes =
//     {}; // each turn (1,2,3...) has it's detection time.
// Map<int, Duration> responseTimes =
//     {}; // each turn (1,2,3...) has it's response Time.
// Duration detectionTime = const Duration(seconds: 0);
// Duration responseTime = const Duration(seconds: 0);
// int numOfTurn = 1; // number of plays.
// int OneOrThree = 1;
// int score3 = 0; // num of correct answers Third exam
// List<int> lightsIndex = [];
int GameNumber = 5;
// bool chosen1 = false;
// bool chosen2 = false;
// bool chosen3 = false;
// bool chosen4 = false;
// bool chosen5 = false;
// bool chosen6 = false;
// bool chosen7 = false;
// bool chosen8 = false;
// int ver = 0;
// int tempIndex = 0;
final stopwatchD = Stopwatch();
final stopwatchR = Stopwatch();

// setting bar
double show1 = 0;
String show2 = '';
String show3 = '';
String show4 = '';
String show5 = '';
String show6 = '';
String show7 = '';
double drop1 = 60.0;
int drop2 = 2;
int drop3 = 5;
int drop4 = 1;
int drop5 = 1;
int drop6 = 5;
