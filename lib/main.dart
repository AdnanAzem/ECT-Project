// import 'package:ect/View/fourth_exam/fourth_exam_explanation_screen.dart';
import 'package:ect/View/fourth_exam/end_fourth_test_screen.dart';
import 'package:ect/View/fourth_exam/fourth_exam_explanation_screen.dart';
import 'package:ect/View/second_exam/second_exam_explanation_screen.dart';
import 'package:ect/View/third_exam/third_exam_explanation_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'View/login_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      home: FourthExplanationPage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
