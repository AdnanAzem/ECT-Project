import 'package:ect/View/fourth_exam/fourth_exam_screen.dart';
import 'package:ect/Widgets/fixed_position.dart';


import 'package:ect/View/third_exam/third_exam_screen.dart';
import 'package:flutter/material.dart';

class FourthExplanationPage extends StatefulWidget {
  const FourthExplanationPage({super.key});

  @override
  State<FourthExplanationPage> createState() => _FourthExplanationPage();
}

class _FourthExplanationPage extends State<FourthExplanationPage> {
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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text(
                "Next, you will be presented with multiple numbers,you are required to click \n the blue button of the two numbers that have the same digits:",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    fontFamily: 'Alkatra'),
              ),
              SizedBox(
                height: 500,
                width: 600,
                child: Image.asset('assets/images/Simulator Screenshot - iPad Pro (12.9-inch) (6th generation) - 2024-02-18 at 21.56.27.png'),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const NumberComparison()),
                    ),
                  );
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const LBulb()),
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
                  child: Center(
                    child: Text(
                      'Lets start',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.9),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Alkatra'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}