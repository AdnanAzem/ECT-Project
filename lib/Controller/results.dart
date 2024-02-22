import 'package:permission_handler/permission_handler.dart';
import 'package:ect/Model/globals.dart' as globals;
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';

void saveUser() async {
  await FirebaseFirestore.instance.collection('users').add({
    'Name': globals.name,
    'ID': globals.iD,
    'Age': globals.age,
    'Gender': globals.gender,
  });
}

void saveResults1() async {
  String temp = "";
  List<Map<String, dynamic>> answers = [];
  for (int i = 0; i < (globals.roundSides).length; i++) {
    if (globals.roundSides[i] == 0) {
      temp = "left";
    } else {
      temp = "right";
    }
    answers.add({
      "round": i + 1,
      "side": temp,
      "shape_display_time": globals.roundsTimes[i],
      "correctness": globals.roundCorrectness[i],
    });
  }

  await FirebaseFirestore.instance.collection('first_exam').add({
    'ID': globals.iD,
    'Total_correct_answers': globals.score1,
    'Answers': answers,
  });
}

void saveResults2() async {
  List<Map<String, dynamic>> answers = [];
  for (int i = 0; i < (globals.roundsBool).length; i++) {
    answers.add({
      "round": i + 1,
      "time_until_choose_the_object": (globals.rountimes[i]).toString(),
      "correctness": globals.roundsBool[i],
    });
  }

  await FirebaseFirestore.instance.collection('second_exam').add({
    'ID': globals.iD,
    'Total_correct_answers': globals.score2,
    'answers': answers,
  });
}

void saveResults3() async {
  List<Map<String, dynamic>> answers = [];
  for (int i = 0; i < (globals.roundsBoolFA).length; i++) {
    answers.add({
      "round": i + 1,
      "time_until_choose_the_object": (globals.roundTimesFA[i]).toString(),
      "correctness": globals.roundsBoolFA[i],
    });
  }

  await FirebaseFirestore.instance.collection('third_exam').add({
    'ID': globals.iD,
    'Total_correct_answers': globals.score3,
    'answers': answers,
  });
  print('Done');
}

void saveResults4() async {
  List<Map<String, dynamic>> answers = [];
  for (int i = 0; i < (globals.roundsBoolNC).length; i++) {
    answers.add({
      "round": i + 1,
      "time_until_choose_the_object": (globals.roundsTimesNC[i]).toString(),
      "correctness": globals.roundsBoolNC[i],
    });
  }

  await FirebaseFirestore.instance.collection('fourth_exam').add({
    'ID': globals.iD,
    'Total_correct_answers': globals.score4,
    'answers': answers,
  });
}

Future<String> createFolder() async {
  String temp =
      '${(Platform.isAndroid ? await getExternalStorageDirectory() : Platform.isIOS ? await getApplicationSupportDirectory() : await getApplicationDocumentsDirectory())!.path}/${globals.iD}';
  print(temp);
  final directory = Directory(temp);
  var per = await Permission.storage.status;
  if (!per.isGranted) {
    await Permission.storage.request();
  }
  if ((await directory.exists())) {
    return directory.path;
  } else {
    directory.create();
    return directory.path;
  }
}

Future<File> get createFileInfo async {
  final directory = await createFolder();
  return File('$directory/Info.txt');
}

Future<File> get createFile1 async {
  final directory = await createFolder();
  return File('$directory/First Exam.txt');
}

Future<File> get createFile2 async {
  final directory = await createFolder();
  return File('$directory/Second Exam.txt');
}

Future<File> get createFile3 async {
  final directory = await createFolder();
  return File('$directory/Third Exam.txt');
}

Future<File> createInfo() async {
  final file = await createFileInfo;
  return file.writeAsString(
      "Personal details: \n Full name: ${globals.name} \n ID: ${globals.iD} \n Age: ${globals.age} \n Gender: ${globals.gender} \n");
}

createFirstExam() async {
  final file = await createFile1;
  String temp = "";
  for (int i = 0; i < (globals.roundSides).length; i++) {
    if (globals.roundSides[i] == 0) {
      temp = "left";
    } else {
      temp = "right";
    }
    file.writeAsString("The start time: ${globals.init} \n \n",
        mode: FileMode.append);
    await file.writeAsString(
        "${i + 1}th  round: \n The actual side: $temp \n The shape display time: ${globals.roundsTimes[i]} \n The correctness of the choice: ${globals.roundCorrectness[i]} \n \n",
        mode: FileMode.append);
  }
  file.writeAsString("Total correct answers: ${globals.score1} \n",
      mode: FileMode.append);
}

createSecondExam() async {
  final file = await createFile2;
  for (int i = 0; i < globals.gamesTimes; i++) {
    await file.writeAsString(
        "${i + 1}th  round: \n The time until choose the object: ${globals.rountimes[i]} \n The correctness of the choice: ${globals.roundsBool[i]}\n The side clicked:  \n \n",
        mode: FileMode.append);
  }
  file.writeAsString("Total correct answers: ${globals.score2} \n",
      mode: FileMode.append);
}

createThirdExam() async {
  // final file = await createFile3;
  // for (int i = 0; i < globals.numOfTurn; i++) {
  //   await file.writeAsString(
  //       "${i + 1}th  round: \n The indexes of the lights turned: ${globals.lightsIndex[i]} \n The detection time: ${globals.detectionTimes[i + 1]} \n The response time: ${globals.responseTimes[i + 1]}  \n \n",
  //       mode: FileMode.append);
  // }
  // file.writeAsString("Total correct answers: ${globals.score3} \n",
  //     mode: FileMode.append);
}

void reset() {
  // info
  globals.name = '';
  globals.iD = '';
  globals.age = '';
  globals.gender = '';
  globals.data = [];

// first exam
  globals.sideTemp = -1;
  globals.roundSides = [];
  globals.roundsTimes = [];
  globals.roundCorrectness = [];
  globals.click = 0;
  globals.score1 = 0;
  globals.init = 60;
  globals.time1 = 60;
  globals.numOfWrongAnswers1 = 2;

// second exam
  globals.score2 = 0;
  globals.roundsBool = [];
  globals.rountimes = [];
  globals.gamesTimes = 0;
  globals.numOfWrongAnswers2 = 1;
  globals.numOfGames = 5;
  globals.time2 = const Duration(seconds: 0);
  globals.version = 1;
  globals.leftOrRight = 0;
  globals.numClickOnRight = 0;

// third exam
  globals.versionFA = 1;
  globals.score3 = 0;
  globals.time3 = const Duration(seconds: 0);
  globals.roundsBoolFA = [];
  globals.numOfWrongAnswers3 = 1;

  globals.gameNumber = 5;

//fourth exam
  globals.score4 = 0;
  globals.time4 = const Duration(seconds: 0);

  globals.roundsTimesNC = [];
  globals.roundsBoolNC = [];
  globals.numOfWrongAnswers4 = 1;

  globals.numOfGames4 = 5;
  globals.versionNC = 1;
}
