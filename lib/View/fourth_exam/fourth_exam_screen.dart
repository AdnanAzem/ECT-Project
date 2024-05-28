import 'package:ect/View/fourth_exam/end_fourth_test_screen.dart';
import 'package:flutter/material.dart';

import 'package:ect/Controller/fourth_exam_funcs.dart';
import 'package:getwidget/getwidget.dart';
import 'package:ect/Model/globals.dart' as globals;

class NumberComparison extends StatefulWidget {
  const NumberComparison({super.key});

  @override
  State<NumberComparison> createState() => _NumberComparisonState();
}

class _NumberComparisonState extends State<NumberComparison> {
  List<String> str = shuffled();
  int the_answer = final_answer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    globals.stopwatch4.reset();
    globals.stopwatch4.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600]?.withOpacity(0.5),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              " Please choose your answer",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Alkatra'),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.first,
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GFIconButton(
                    onPressed: () {
                      if (the_answer == 0) {
                        if (globals.numOfGames4 > 0) {
                          gotcorrectanswer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      } else {
                        // if (globals.numOfWrongAnswers4 > 0) {
                        if (globals.numOfGames4 > 0) {
                          gotwronganswer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          whenUpdate4();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      }
                    },
                    icon: const Icon(Icons.check_box),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(1),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(2),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GFIconButton(
                    onPressed: () {
                      if (the_answer == 1) {
                        if (globals.numOfGames4 > 0) {
                          gotcorrectanswer();

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      } else {
                        // if (globals.numOfWrongAnswers4 > 0) {
                        if (globals.numOfGames4 > 0) {
                          gotwronganswer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          whenUpdate4();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      }
                    },
                    icon: const Icon(Icons.check_box),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(3),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(4),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GFIconButton(
                    onPressed: () {
                      if (the_answer == 2) {
                        if (globals.numOfGames4 > 0) {
                          gotcorrectanswer();

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      } else {
                        // if (globals.numOfWrongAnswers4 > 0) {
                        if (globals.numOfGames4 > 0) {
                          gotwronganswer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          whenUpdate4();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      }
                    },
                    icon: const Icon(Icons.check_box),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(5),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(6),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GFIconButton(
                    onPressed: () {
                      if (the_answer == 3) {
                        if (globals.numOfGames4 > 0) {
                          gotcorrectanswer();

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      } else {
                        // if (globals.numOfWrongAnswers4 > 0) {
                        if (globals.numOfGames4 > 0) {
                          gotwronganswer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          whenUpdate4();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      }
                    },
                    icon: const Icon(Icons.check_box),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(7),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(8),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GFIconButton(
                    onPressed: () {
                      if (the_answer == 4) {
                        if (globals.numOfGames4 > 0) {
                          gotcorrectanswer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      } else {
                        // if (globals.numOfWrongAnswers4 > 0) {
                        if (globals.numOfGames4 > 0) {
                          gotwronganswer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          whenUpdate4();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      }
                    },
                    icon: const Icon(Icons.check_box),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(9),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(10),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GFIconButton(
                    onPressed: () {
                      if (the_answer == 5) {
                        gotcorrectanswer();
                        if (globals.score4 <= globals.numOfGames4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      } else {
                        // if (globals.numOfWrongAnswers4 > 0) {
                        if (globals.numOfGames4 > 0) {
                          gotwronganswer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          whenUpdate4();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      }
                    },
                    icon: const Icon(Icons.check_box),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(11),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(12),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GFIconButton(
                    onPressed: () {
                      if (the_answer == 6) {
                        gotcorrectanswer();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NumberComparison()),
                        );
                      } else {
                        // if (globals.numOfWrongAnswers4 > 0) {
                        if (globals.numOfGames4 > 0) {
                          gotwronganswer();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NumberComparison()),
                          );
                        } else {
                          whenUpdate4();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndOfFourthTest()),
                          );
                        }
                      }
                    },
                    icon: const Icon(Icons.check_box),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      str.elementAt(13),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
