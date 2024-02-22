library globals;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

// firebase
final firebase = FirebaseAuth.instance;

// info
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
List<bool> roundCorrectness = []; // correctness of the round.
int click = 0; // num of answers first exam.
int score1 = 0; // num of correct answers first exam.
double init = 60;
double time1 = 60; // milliseconds.
int numOfWrongAnswers1 = 2;

// second exam
int score2 = 0; // num of correct answers second exam.
List<bool> roundsBool = []; // correctness of the round.
List<Duration> rountimes = [];
int gamesTimes = 0;
int numOfWrongAnswers2 = 1; // num of wrong answers before ending second exam.
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
int gameTimes3 = 0;
int versionFA = 1; // Findig A game (FA) version 1 or 2.
int score3 = 0; // num of correct answers third exam.
final stopwatchFA = Stopwatch();
Duration time3 = const Duration(
    seconds:
        0); // the time passed from when the student saw the words until he pressed a button.
List<Duration> roundTimesFA = [];
List<bool> roundsBoolFA = []; // correctness of the round.
int numOfWrongAnswers3 = 1; // num of wrong answers before ending third exam.

int gameNumber = 5; // num of games before ending third exam (correct answers).

//fourth exam
int score4 = 0; // num of correct answers forth exam.
final stopwatch4 = Stopwatch();
Duration time4 = const Duration(seconds: 0);
List<Duration> roundsTimesNC = [];
List<bool> roundsBoolNC = []; // correctness of the round.
int numOfWrongAnswers4 = 1; // num of wrong answers before ending fourth exam.

int numOfGames4 =
    5; // num of games before ending fourth exam (correct answers).
int versionNC = 1; // Number Comprision (NC) game version 1 or 2.

// setting bar
double show1 = 0;
String show2 = '';
String show3 = '';
String show4 = '';
String show5 = '';
String show6 = '';
String show7 = '';
double drop1 = 60.0; // time1 & init in first exam
int drop2 = 2; // numOfWrongAnswers1 in first exam
int drop3 = 5; // numOfGames in second exam
int drop4 = 1; //numOfWrongAnswers2 in second exam
int drop5 = 1; // version in second exam
int drop6 = 5; // gameNumber in third exam
int drop7 = 1; // numOfWrongAnswers3 in third exam
int drop8 = 1; // versionFA in third exam
int drop9 = 5; // numOfGames4 in fourth exam
int drop10 = 1; // numOfWrongAnswers4 in fourth exam
int drop11 = 1; // versionNC in fourth exam
