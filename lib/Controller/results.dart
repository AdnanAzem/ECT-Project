import 'package:permission_handler/permission_handler.dart';
import 'package:ect/Model/globals.dart' as globals;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

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
