import 'package:flutter/material.dart';
// import 'package:get/get.dart';
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
                const SizedBox(height: 15),
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
                    fontSize: 90,
                    fontFamily: 'Alkatra',
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 460,
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
                      const SizedBox(height: 15),
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
                      const SizedBox(height: 15),
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
                      const SizedBox(height: 15),
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
                      const SizedBox(height: 15),
                      SizedBox(
                        width: 350,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ListTile(
                                title: const Text('male'),
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
                                title: const Text('female'),
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
                        // child: TextFormField(
                        //   decoration: const InputDecoration(
                        //     border: OutlineInputBorder(),
                        //     hintText: 'Please enter your gender',
                        //     hintStyle: TextStyle(
                        //         color: Colors.black, fontFamily: 'Alkatra'),
                        //   ),
                        //   validator: (temp4) {
                        //     if (temp4!.isEmpty) {
                        //       return "Gender Required";
                        //     }
                        //     return null;
                        //   },
                        //   onChanged: (value4) {
                        //     globals.gender = value4;
                        //   },
                        // ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        child: TextButton(
                          onPressed: () {
                            final form = formKey.currentState!;
                            final isValid = form.validate();
                            if (isValid) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FirstExplanationPage()),
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
