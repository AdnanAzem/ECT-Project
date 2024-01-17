import 'package:flutter/material.dart';
import '../Model/globals.dart' as globals;

class SettingBar extends StatefulWidget {
  const SettingBar({super.key});

  @override
  State<SettingBar> createState() => _SettingBar();
}

class _SettingBar extends State<SettingBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue[200]?.withOpacity(0.5),
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          ExpansionTile(
            leading: const Icon(Icons.looks_one_rounded),
            iconColor: Colors.grey,
            textColor: Colors.grey,
            title: const Text('First Exam',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alkatra')),
            children: [
              const ListTile(
                title: Text(
                  "Select the starting time (milliseconds):",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black, fontFamily: 'Alkatra'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: DropdownButton<double>(
                      value: globals.drop1,
                      items: <double>[80, 75, 70, 65, 60, 55, 50]
                          .map((double value1) {
                        return DropdownMenuItem<double>(
                          value: value1,
                          child: Text(
                            value1.toString(),
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Alkatra'),
                          ),
                        );
                      }).toList(),
                      onChanged: (value1) {
                        setState(() {
                          globals.drop1 = value1!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const ListTile(
                title: Text(
                  "Select the number of wrong answers before ending the test:",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black, fontFamily: 'Alkatra'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: DropdownButton<int>(
                      value: globals.drop2,
                      items: <int>[5, 4, 3, 2, 1].map((int value2) {
                        return DropdownMenuItem<int>(
                          value: value2,
                          child: Text(
                            value2.toString(),
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Alkatra'),
                          ),
                        );
                      }).toList(),
                      onChanged: (value2) {
                        setState(() {
                          globals.drop2 = value2!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.looks_two_rounded),
            iconColor: Colors.grey,
            textColor: Colors.grey,
            title: const Text('Second Exam',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alkatra')),
            children: [
              const ListTile(
                title: Text(
                  "Select the number of games before ending the test (correct answers):",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black, fontFamily: 'Alkatra'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: DropdownButton<int>(
                      value: globals.drop3,
                      items: <int>[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
                          .map((int value3) {
                        return DropdownMenuItem<int>(
                          value: value3,
                          child: Text(
                            value3.toString(),
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Alkatra'),
                          ),
                        );
                      }).toList(),
                      onChanged: (value3) {
                        setState(() {
                          globals.drop3 = value3!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const ListTile(
                title: Text(
                  "Select the number of wrong answers before ending the test:",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black, fontFamily: 'Alkatra'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: DropdownButton<int>(
                      value: globals.drop4,
                      items: <int>[5, 4, 3, 2, 1].map((int value4) {
                        return DropdownMenuItem<int>(
                          value: value4,
                          child: Text(
                            value4.toString(),
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Alkatra'),
                          ),
                        );
                      }).toList(),
                      onChanged: (value4) {
                        setState(() {
                          globals.drop4 = value4!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const ListTile(
                title: Text(
                  "Select the version of the Double game (1 or 2):",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black, fontFamily: 'Alkatra'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: DropdownButton<int>(
                      value: globals.drop5,
                      items: <int>[1, 2].map((int value5) {
                        return DropdownMenuItem<int>(
                          value: value5,
                          child: Text(
                            value5 == 2
                                ? '$value5 (same color)'
                                : '$value5 (different color)',
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Alkatra'),
                          ),
                        );
                      }).toList(),
                      onChanged: (value5) {
                        setState(() {
                          globals.drop5 = value5!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.looks_3_rounded),
            iconColor: Colors.grey,
            textColor: Colors.grey,
            title: const Text('Third Exam',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alkatra')),
            children: [
              const ListTile(
                title: Text(
                  "Select the number of games before ending the test:",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black, fontFamily: 'Alkatra'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: DropdownButton<int>(
                      value: globals.drop6,
                      items: <int>[1, 2, 3, 4, 5].map((int value6) {
                        return DropdownMenuItem<int>(
                          value: value6,
                          child: Text(
                            value6.toString(),
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Alkatra'),
                          ),
                        );
                      }).toList(),
                      onChanged: (value6) {
                        setState(() {
                          globals.drop6 = value6!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 45,
            width: 55,
            child: TextButton(
              onPressed: () {
                globals.time1 = globals.drop1;
                globals.init = globals.drop1;
                globals.numOfWrongAnswers1 = globals.drop2;
                globals.numOfGames = globals.drop3;
                globals.numOfWrongAnswers2 = globals.drop4;
                globals.version = globals.drop5;
                globals.GameNumber = globals.drop6;
                Scaffold.of(context).closeDrawer();
              },
              child: Container(
                height: 70,
                width: 80,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 123, 191, 247).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                      offset: Offset(
                        2.0,
                        2.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'save',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'Alkatra'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
