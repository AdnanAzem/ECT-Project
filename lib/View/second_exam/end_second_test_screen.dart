import 'package:ect/Controller/results.dart';
import 'package:ect/View/third_exam/third_exam_explanation_screen.dart';
import 'package:flutter/material.dart';

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

class EndOfSecondTest extends StatefulWidget {
  const EndOfSecondTest({super.key});

  @override
  State<EndOfSecondTest> createState() => _EndOfSecondTest();
}

class _EndOfSecondTest extends State<EndOfSecondTest> {
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
                "You finished the second part",
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
                saveResults2();
                // createFolder();
                // createInfo();
                // createFirstExam();
                // createSecondExam();
                Navigator.push(
                  context,
                MaterialPageRoute(
                    builder: (context) => const ThirdExplanationPage()),
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
                    'next part',
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
