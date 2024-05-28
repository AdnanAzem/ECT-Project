import 'package:csv/csv.dart';
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
    'Grade': globals.grade,
  });
}

void saveResults1() async {
  Duration smallTime = const Duration(seconds: 5);
  Duration bigTime = const Duration(seconds: 10);
  String temp = "";
  List<Map<String, dynamic>> answers = [];
  for (int i = 0; i < (globals.roundSides).length; i++) {
    if (globals.times[i] <= smallTime && globals.roundCorrectness[i]) {
      globals.fastML++;
    } else if (globals.times[i] > smallTime &&
        globals.times[i] <= bigTime &&
        globals.roundCorrectness[i]) {
      globals.mediumML++;
    } else if (globals.times[i] > bigTime && globals.roundCorrectness[i]) {
      globals.slowML++;
    }
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

  if (globals.isCheckedGrade) {
    await FirebaseFirestore.instance.collection('first_exam').add({
      'ID': globals.iD,
      'Total_correct_answers': globals.score1,
      'Answers': answers,
    });
  }
  return;
}

void saveResults2() async {
  Duration smallTime = const Duration(seconds: 5);
  Duration bigTime = const Duration(seconds: 10);
  List<Map<String, dynamic>> answers = [];
  for (int i = 0; i < (globals.roundsBool).length; i++) {
    if (globals.rountimes[i] <= smallTime && globals.roundsBool[i]) {
      globals.fastML++;
    } else if (globals.rountimes[i] > smallTime &&
        globals.rountimes[i] <= bigTime &&
        globals.roundsBool[i]) {
      globals.mediumML++;
    } else if (globals.rountimes[i] > bigTime && globals.roundsBool[i]) {
      globals.slowML++;
    }
    answers.add({
      "round": i + 1,
      "time_until_choose_the_object": (globals.rountimes[i]).toString(),
      "correctness": globals.roundsBool[i],
    });
  }

  if (globals.isCheckedGrade) {
    await FirebaseFirestore.instance.collection('second_exam').add({
      'ID': globals.iD,
      'Total_correct_answers': globals.score2,
      'answers': answers,
    });
  }
  return;
}

void saveResults3() async {
  Duration smallTime = const Duration(seconds: 5);
  Duration bigTime = const Duration(seconds: 10);
  List<Map<String, dynamic>> answers = [];
  for (int i = 0; i < (globals.roundsBoolFA).length; i++) {
    if (globals.roundTimesFA[i] <= smallTime && globals.roundsBoolFA[i]) {
      globals.fastML++;
    } else if (globals.roundTimesFA[i] > smallTime &&
        globals.roundTimesFA[i] <= bigTime &&
        globals.roundsBoolFA[i]) {
      globals.mediumML++;
    } else if (globals.roundTimesFA[i] > bigTime && globals.roundsBoolFA[i]) {
      globals.slowML++;
    }
    answers.add({
      "round": i + 1,
      "time_until_choose_the_object": (globals.roundTimesFA[i]).toString(),
      "correctness": globals.roundsBoolFA[i],
    });
  }

  if (globals.isCheckedGrade) {
    await FirebaseFirestore.instance.collection('third_exam').add({
      'ID': globals.iD,
      'Total_correct_answers': globals.score3,
      'answers': answers,
    });
  }
  return;
}

void saveResults4() async {
  Duration smallTime = const Duration(seconds: 5);
  Duration bigTime = const Duration(seconds: 10);
  List<Map<String, dynamic>> answers = [];
  for (int i = 0; i < (globals.roundsBoolNC).length; i++) {
    if (globals.roundsTimesNC[i] <= smallTime && globals.roundsBoolNC[i]) {
      globals.fastML++;
    } else if (globals.roundsTimesNC[i] > smallTime &&
        globals.roundsTimesNC[i] <= bigTime &&
        globals.roundsBoolNC[i]) {
      globals.mediumML++;
    } else if (globals.roundsTimesNC[i] > bigTime && globals.roundsBoolNC[i]) {
      globals.slowML++;
    }
    answers.add({
      "round": i + 1,
      "time_until_choose_the_object": (globals.roundsTimesNC[i]).toString(),
      "correctness": globals.roundsBoolNC[i],
    });
  }

  if (globals.isCheckedGrade) {
    await FirebaseFirestore.instance.collection('fourth_exam').add({
      'ID': globals.iD,
      'Total_correct_answers': globals.score4,
      'answers': answers,
    });
  }
  return;
}

void saveMLResults() async {
  int correctAnswers =
      globals.score1 + globals.score2 + globals.score3 + globals.score4;
  if (globals.isCheckedGrade) {
    await FirebaseFirestore.instance.collection('trainML').add({
      'Name': globals.name,
      'ID': globals.iD,
      'Age': globals.age,
      'Gender': globals.gender,
      'Total_correct_answers': correctAnswers,
      'Total_wrong_answers': globals.wrongAnswersML,
      'fast': globals.fastML,
      'medium': globals.mediumML,
      'slow': globals.slowML,
      'grade': globals.grade,
    });
  } else {
    await FirebaseFirestore.instance.collection('predictML').add({
      'Name': globals.name,
      'ID': globals.iD,
      'Age': globals.age,
      'Gender': globals.gender,
      'Total_correct_answers': correctAnswers,
      'Total_wrong_answers': globals.wrongAnswersML,
      'fast': globals.fastML,
      'medium': globals.mediumML,
      'slow': globals.slowML,
      // 'grade': globals.grade,
    });
  }
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

Future<void> exportDataToCSV() async {
  try {
    // Fetch data from Firestore
    List<Map<String, dynamic>> data = await fetchDataFromFirestore();

    // Convert data to CSV format
    String csvData = convertToCSV(data);

    // Save CSV file
    await saveCSVFile(csvData, 'data.csv');
  } catch (e) {
    print('Error: $e');
  }
}

Future<List<Map<String, dynamic>>> fetchDataFromFirestore() async {
  List<Map<String, dynamic>> dataList = [];

  QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection('ML').get();

  for (var doc in querySnapshot.docs) {
    dataList.add(doc.data() as Map<String, dynamic>);
  }

  return dataList;
}

String convertToCSV(List<Map<String, dynamic>> data) {
  List<List<dynamic>> rows = [];

  // Add the headers
  if (data.isNotEmpty) {
    rows.add(data[0].keys.toList());
  }

  // Add the data
  for (var map in data) {
    rows.add(map.values.toList());
  }

  return const ListToCsvConverter().convert(rows);
}

Future<void> saveCSVFile(String csvData, String fileName) async {
  final directory = (Platform.isAndroid
      ? await getExternalStorageDirectory()
      : Platform.isIOS
          ? await getApplicationSupportDirectory()
          : await getApplicationDocumentsDirectory());
  // final directory = await getApplicationDocumentsDirectory();
  final path = '${directory!.path}/$fileName';
  final file = File(path);

  await file.writeAsString(csvData);
  print('File saved at $path');
}

void reset() {
  // info
  globals.name = '';
  globals.iD = '';
  globals.age = '';
  globals.gender = '';
  globals.data = [];
  globals.grade = '';
  globals.isCheckedGrade = false;

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

  // ML
  globals.correctAnswersML = 0;
  globals.wrongAnswersML = 0;
  globals.fastML = 0;
  globals.mediumML = 0;
  globals.slowML = 0;
}
