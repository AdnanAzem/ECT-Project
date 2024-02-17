import 'package:ect/Controller/third_exam_funcs.dart';
import 'package:ect/Model/globals.dart' as globals;
import 'package:ect/Widgets/fixed_position.dart';
import 'package:flutter/material.dart';

class FindingA extends StatefulWidget {
  const FindingA({super.key});

  @override
  State<FindingA> createState() => _FindingAState();
}

class _FindingAState extends State<FindingA> {
  @override
  Widget build(BuildContext context) {
    List<String> words = [];
    words = generateWordsWithoutA(14) + generateWordsWithA(1);
    words.shuffle();
    List<FixedPosition> templates = chooseTemplate(globals.versionFA, words);
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
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Please Pick the word that contains the letter 'a'.",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                  fontFamily: 'Alkatra'),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 450,
                width: 900,
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
                    for (int i = 0; i < templates.length; i++) templates[i],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
