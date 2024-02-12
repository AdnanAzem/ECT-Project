import 'package:ect/View/fourth_exam/end_fourth_test_screen.dart';
import 'package:flutter/material.dart';

class NumberComparison extends StatefulWidget {
  const NumberComparison({super.key});

  @override
  State<NumberComparison> createState() => _NumberComparisonState();
}

class _NumberComparisonState extends State<NumberComparison> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600]?.withOpacity(0.5),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background2.png"),
              fit: BoxFit.cover),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EndOfFourthTest()),
            );
          },
          child: Text("next"),
        ),
      ),
    );
  }
}
