import 'package:csv/csv.dart';
import 'package:ect/Controller/results.dart';
import 'package:ect/View/login_screen.dart';
import 'package:flutter/material.dart';

import 'dart:async';
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

  List<Map<String, dynamic>> dataList = [];
  snapshot.docs.forEach((doc) {
    dataList.add(doc.data());
  });

  List<List<dynamic>> csvData = [];

  // Add header row
  csvData.add(dataList.first.keys.toList());

  // Add data rows
  for (var data in dataList) {
    csvData.add(data.values.toList());
  }

  // Generate CSV content
  String csvString = const ListToCsvConverter().convert(csvData);

  // Get the document directory using path_provider
  final directory = await getApplicationDocumentsDirectory();
  final filePath = '${directory.path}/first_exam.csv';

  // Write CSV content to the file
  File file = File(filePath);
  await file.writeAsString(csvString);

  print('CSV file saved successfully at: $filePath');
}

Future<void> exportFirestoreDataToCsv2() async {
  // Query data from Firestore
  QuerySnapshot<Map<String, dynamic>> snapshot =
      await FirebaseFirestore.instance.collection('second_exam').get();

  // Convert data to CSV format
  List<Map<String, dynamic>> dataList = [];
  snapshot.docs.forEach((doc) {
    dataList.add(doc.data());
  });

  List<List<dynamic>> csvData = [];

  // Add header row
  csvData.add(dataList.first.keys.toList());

  // Add data rows
  for (var data in dataList) {
    csvData.add(data.values.toList());
  }

  // Generate CSV content
  String csvString = const ListToCsvConverter().convert(csvData);

  // Get the document directory using path_provider
  final directory = await getApplicationDocumentsDirectory();
  final filePath = '${directory.path}/second_exam.csv';

  // Write CSV content to the file
  File file = File(filePath);
  await file.writeAsString(csvString);

  print('CSV file saved successfully at: $filePath');
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
                saveResults4();
                saveMLResults();
                exportDataToCSV();
                reset();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
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
            ),
          ],
        ),
      ),
    );
  }
}
