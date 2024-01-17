import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ect/Controller/third_exam_funcs.dart';
import 'package:ect/Model/globals.dart' as globals;
import 'package:ect/View/third_exam/end_third_test_screen.dart';
import 'package:ect/Widgets/styled_button.dart';

class ThirdExam extends StatefulWidget {
  const ThirdExam({super.key});

  @override
  State<ThirdExam> createState() => _ThirdExamState();
}

class _ThirdExamState extends State<ThirdExam> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    globals.stopwatchD.reset();
    // globals.stopwatchD.start();
  }

  @override
  void dispose() {
    super.dispose();
    globals.holdTimer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: StyledButton(
                  onPressed: () {
                    setState(() {
                      globals.pressedButton = false;
                      handleOneOfTheCirclesIsPressed();
                      globals.centerImage = 'assets/gifs/black.gif';
                      globals.centerArrow = const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      );
                    });
                  },
                  clr: Colors.red), // left circle
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            globals.centerImage,
                          ), //AssetImage(randomPhoto),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: globals.centerArrow, //randomArrow,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Material(
                      color: globals
                          .containerColor, // This sets the color when not pressed
                      borderRadius: BorderRadius.circular(100),
                      child: InkWell(
                        onTapDown: (_) {
                          setState(() {
                            // handleCenterButtonPressDown();

                            globals.apearTimer =
                                Timer(const Duration(seconds: 3), () {
                              globals.pressedButton = true;
                              globals.stopwatchD.reset();
                              globals.stopwatchD.start();
                              globals.isHoldingDone = true;
                            });
                            globals.holdTimer =
                                Timer(const Duration(seconds: 2), () {
                              setState(() {
                                globals.centerArrow = getRandomArrow();
                                globals.centerImage = getRandomPhoto();
                              });
                            });
                          });
                        },
                        onTapUp: (_) {
                          globals.apearTimer?.cancel();
                          globals.holdTimer?.cancel;
                          setState(() {
                            handleCenterButtonPressUp();
                            globals.isHoldingDone = false;
                            globals.GameNumber--;
                            if (globals.GameNumber == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const EndOfThirdTest(),
                                ),
                              );
                            }
                          });
                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFF8636FF), Color(0xFF6D2BFF)],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF6D2BFF).withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: const Color(0xFF8636FF).withOpacity(0.5),
                                spreadRadius: -2,
                                blurRadius: 10,
                                offset: const Offset(0, -5),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              "Hold Me!",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: StyledButton(
                  onPressed: () {
                    setState(() {
                      globals.pressedButton = false;
                      handleOneOfTheCirclesIsPressed();
                      globals.centerImage = 'assets/gifs/black.gif';
                      globals.centerArrow = const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      );
                    });
                  },
                  clr: Colors.green), // right circle
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
