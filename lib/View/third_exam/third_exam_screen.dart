import 'package:ect/Controller/third_exam_funcs.dart';
import 'package:ect/View/third_exam/end_third_test_screen.dart';
import 'package:ect/View/third_exam/templatesFA_first_version.dart';
import 'package:flutter/material.dart';

class FindingA extends StatefulWidget {
  const FindingA({super.key});

  @override
  State<FindingA> createState() => _FindingAState();
}

class _FindingAState extends State<FindingA> {
  @override
  Widget build(BuildContext context) {
    List<Positioned> templates = chooseTemplate(1, ['aa', 'bb']);
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
          child: Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(500),
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
            child: Stack(
              alignment: Alignment.center,
              children: [
                templates[0],
                templates[1],
                templates[2],
                templates[3],
                templates[4],
                templates[5],
                templates[6],
                templates[7],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
