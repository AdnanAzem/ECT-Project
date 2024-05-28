import 'package:ect/Controller/results.dart';
import 'package:flutter/material.dart';
import 'package:ect/View/first_exam/first_exam_explanation_screen.dart';

import 'package:ect/View/setting_bar.dart';
import 'package:ect/Model/globals.dart' as globals;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      globals.gender = globals.genderList[0];
    });
    super.initState();
  }

  final formKey = GlobalKey<FormState>();
  String currentGender = globals.genderList[0];
  static final RegExp alphaB = RegExp('[a-zA-Z]');
  static final RegExp numbers = RegExp('[0-9]');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SettingBar(),
      appBar: AppBar(
        backgroundColor: Colors.blue[600]?.withOpacity(0.5),
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.settings));
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background1.png"),
              fit: BoxFit.cover),
        ),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text(
                  "Login page",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 84, 172, 245)
                        .withOpacity(0.9),
                    fontWeight: FontWeight.w900,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(5.0, 5.0),
                        blurRadius: 10.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                    fontSize: 75,
                    fontFamily: 'Alkatra',
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 167, 212, 249)
                        .withOpacity(0.8),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Please enter your name',
                            hintStyle: TextStyle(
                                color: Colors.black, fontFamily: 'Alkatra'),
                          ),
                          validator: (temp1) {
                            if (temp1!.isEmpty) {
                              return "Name Required";
                            } else if (!(alphaB.hasMatch(temp1))) {
                              return "Only Alphabets are allowed in the name field";
                            }
                            return null;
                          },
                          onChanged: (value1) {
                            globals.name = value1;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Please enter your ID',
                            hintStyle: TextStyle(
                                color: Colors.black, fontFamily: 'Alkatra'),
                          ),
                          validator: (temp2) {
                            if (temp2!.isEmpty) {
                              return "ID Required";
                            } else if (temp2.length != 9) {
                              return "The ID number should include 9 characters";
                            } else if (!(numbers.hasMatch(temp2))) {
                              return "Only numeric values are allowed in the name field";
                            }
                            return null;
                          },
                          onChanged: (value2) {
                            globals.iD = value2;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Please enter your age',
                            hintStyle: TextStyle(
                                color: Colors.black, fontFamily: 'Alkatra'),
                          ),
                          validator: (temp3) {
                            if (temp3!.isEmpty) {
                              return "Age Required";
                            } else if (!(numbers.hasMatch(temp3))) {
                              return "Only numeric values are allowed in the age field";
                            }
                            return null;
                          },
                          onChanged: (value3) {
                            globals.age = value3;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 30,
                        width: 350,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ListTile(
                                title: const Text(
                                  'male',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Alkatra',
                                    fontSize: 16,
                                  ),
                                ),
                                leading: Radio(
                                  value: globals.genderList[0],
                                  groupValue: globals.gender,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        globals.gender = value.toString();
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: const Text(
                                  'female',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Alkatra',
                                    fontSize: 16,
                                  ),
                                ),
                                leading: Radio(
                                  value: globals.genderList[1],
                                  groupValue: globals.gender,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        globals.gender = value.toString();
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            shape: const CircleBorder(),
                            value: globals.isCheckedGrade,
                            onChanged: (bool? value) {
                              setState(() {
                                globals.isCheckedGrade = value ?? false;
                              });
                            },
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Have a Pshychometry grade?',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Alkatra',
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      if (globals.isCheckedGrade)
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Please enter your grade',
                              hintStyle: TextStyle(
                                  color: Colors.black, fontFamily: 'Alkatra'),
                            ),
                            validator: (temp) {
                              if (temp!.isEmpty) {
                                return "grade Required";
                              } else if (!(numbers.hasMatch(temp))) {
                                return "Only numeric values are allowed in the age field";
                              } else if (int.parse(temp) <= 400 ||
                                  int.parse(temp) >= 800) {
                                return "grade must be between 400 & 800";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              globals.grade = value;
                            },
                          ),
                        ),
                      const SizedBox(height: 10),
                      SizedBox(
                        child: TextButton(
                          onPressed: () async {
                            final form = formKey.currentState!;
                            final isValid = form.validate();
                            if (isValid) {
                              saveUser();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const FirstExplanationPage(),
                                ),
                              );
                            }
                          },
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 123, 191, 247)
                                  .withOpacity(0.9),
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
                                'Login',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.9),
                                    fontSize: 29,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Alkatra'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
