import 'package:csv/csv.dart';
import 'package:ect/View/login_screen.dart';
import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path_provider/path_provider.dart';

Future<void> exportFirestoreDataToCsv() async {
  // Query data from Firestore
  QuerySnapshot<Map<String, dynamic>> snapshot =
      await FirebaseFirestore.instance.collection('users').get();

  // Convert data to CSV format
  List<List<dynamic>> csvData = [
    // Headers
    ['Name', 'ID', 'Age', 'Gender'], // Replace with your field names

    // Data rows
    ...snapshot.docs.map((doc) => [
          doc['Name'],
          doc['ID'],
          doc['Age'],
          doc['Gender'],
          // Add more fields as needed
        ]),
  ];

  // Write CSV data to a file
  String csv = const ListToCsvConverter().convert(csvData);
  final directory = await getApplicationDocumentsDirectory();
  final file = File('${directory.path}/users.csv');
  await file.writeAsString(csv);

  print('CSV file exported to: ${file.path}');
}

Future<void> exportFirestoreDataToCsv1() async {
  // Query data from Firestore
  QuerySnapshot<Map<String, dynamic>> snapshot =
  await FirebaseFirestore.instance.collection('first_exam').get();

  List<dynamic> fieldValues = [];
  fieldValues = snapshot.docs.map((e) => e['Answers']).toList();




  // print(fieldValues);

  // List<List<dynamic>> csvData1 = [
  //   ['round','correctness','side','shape_display_time'],
  //   ...snapshot..map((e) => [
  //     e['round'],
  //     e['correctness'],
  //     e['side'],
  //     e['shape_display_time']
  //   ]),
  // ];

  // String csvFile = const ListToCsvConverter().convert(csvData1);

  // Convert data to CSV format
  List<List<dynamic>> csvData = [
    // Headers
    ['ID', 'Total_correct_answers'], // Replace with your field names

    // Data rows
    ...snapshot.docs.map((doc) => [
      doc['ID'],
      doc['Total_correct_answers'],
      // fieldValues,
      // Add more fields as needed
    ]),
  ];

  // Write CSV data to a file
  String csv = const ListToCsvConverter().convert(csvData);
  // String csv1 = const ListToCsvConverter().convert(csvData1);
  final directory = await getApplicationDocumentsDirectory();
  final file = File('${directory.path}/first_exam.csv');
  // final file1 = File('${directory.path}/first_exam_answers.csv');
  await file.writeAsString(csv);
  // await file1.writeAsString(csvFile);

  print('CSV file exported to: ${file.path}');
  // print('CSV file exported to: ${file1.path}');
}

Future<void> exportFirestoreDataToCsv2() async {
  // Query data from Firestore
  QuerySnapshot<Map<String, dynamic>> snapshot =
  await FirebaseFirestore.instance.collection('second_exam').get();

  // Convert data to CSV format
  List<List<dynamic>> csvData = [
    // Headers
    ['ID', 'Total_correct_answers', 'Answers'], // Replace with your field names

    // Data rows
    ...snapshot.docs.map((doc) => [
      doc['ID'],
      doc['Total_correct_answers'],
      doc['Answers'],
      // Add more fields as needed
    ]),
  ];

  // Write CSV data to a file
  String csv = const ListToCsvConverter().convert(csvData);
  final directory = await getApplicationDocumentsDirectory();
  final file = File('${directory.path}/second_exam.csv');
  await file.writeAsString(csv);

  print('CSV file exported to: ${file.path}');
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class EndOfFourthTest extends StatefulWidget {
  const EndOfFourthTest({super.key});

  @override
  State<EndOfFourthTest> createState() => _EndOfFourthTest();
}

class _EndOfFourthTest extends State<EndOfFourthTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[600]?.withOpacity(0.5),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background1.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 300),
                const Center(
                  child: Text(
                    "You finished the last part",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Alkatra'),
                  ),
                ),
                const SizedBox(height: 80),
                TextButton(
                  onPressed: () async {
                    // exportFirestoreDataToCsv();
                    // exportFirestoreDataToCsv1();
                    // exportFirestoreDataToCsv2();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                    // createFolder();
                    // createInfo();
                    // createFirstExam();
                    // createSecondExam();
                    // createFourthExam();
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const LoginPage()),
                    // );
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue[300]?.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(
                            7.0,
                            7.0,
                          ),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'End test',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Alkatra'),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
