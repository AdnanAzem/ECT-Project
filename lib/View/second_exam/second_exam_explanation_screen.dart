import 'package:flutter/material.dart';
import 'package:ect/View/second_exam/second_exam_screen.dart';

class SecondExplanationPage extends StatefulWidget {
  const SecondExplanationPage({super.key});

  @override
  State<SecondExplanationPage> createState() => _SecondExplanationPage();
}

class _SecondExplanationPage extends State<SecondExplanationPage> {
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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    "Next, you will be presented with two cards and will be required to click in the left card \n on the symbol that is common to both cards:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                        fontFamily: 'Alkatra'),
                  ),
                  const SizedBox(height: 30),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 400,
                        child: Image.asset('assets/images/DoubleEx1.png'),
                      ),
                      const SizedBox(width: 40),
                      SizedBox(
                        height: 400,
                        child: Image.asset('assets/images/DoubleEx2.png'),
                      ),
                    ],
                  )),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Double()),
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
                ])));
  }
}
