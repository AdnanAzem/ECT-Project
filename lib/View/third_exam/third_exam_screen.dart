import 'package:ect/View/third_exam/end_third_test_screen.dart';
import 'package:flutter/material.dart';

class FindingA extends StatefulWidget {
  const FindingA({super.key});

  @override
  State<FindingA> createState() => _FindingAState();
}

class _FindingAState extends State<FindingA> {
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
              MaterialPageRoute(builder: (context) => const EndOfThirdTest()),
            );
          },
          child: Text("next"),
        ),
      ),
    );
  }
}