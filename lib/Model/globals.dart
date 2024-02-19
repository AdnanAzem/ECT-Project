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
List<bool> roundCorrectness = [];
int click = 0; // num of answers first exam.
int score1 = 0; // num of correct answers first exam.
double init = 600;
double time1 = 600; // milliseconds.
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
int versionFA = 1; // Findig A game (FA) version 1 or 2.
int score3 = 0; // num of correct answers third exam.
final stopwatchFA = Stopwatch();
Duration time3 = const Duration(
    seconds:
        0); // the time passed from when the student saw the words until he pressed a button.
List<Duration> roundTimesFA = [];
List<bool> roundsBoolFA = [];
int numOfWrongAnswers3 = 1;

int gameNumber = 5;


//fourth exam
int score4 = 0; // num of correct answers second exam.
final stopwatch4 = Stopwatch();
Duration time4 = const Duration(
    seconds:
        0);
//List<bool> roundsBool4 = [];
List<Duration> roundsTimes4 = [];
List<bool> roundCorrectness4 = [];
//int gamesTimes4 = 0;
int numOfWrongAnswers4 = 1;

int numOfGames4 = 5; // num of games before ending second exam (correct answers).
//double time4 =60; // the time passed from when the student saw the cards until he pressed a button.
int version4 = 1; // Double game version 1 or 2.
//IconData icon4 = Icons.abc;



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
int drop7 = 1;
int drop8 = 1;
