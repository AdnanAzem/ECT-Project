import 'package:ect/View/third_exam/third_exam_screen.dart';
import 'package:flutter/material.dart';

class ThirdExplanationPage extends StatefulWidget {
  const ThirdExplanationPage({super.key});

  @override
  State<ThirdExplanationPage> createState() => _ThirdExplanationPage();
}

class _ThirdExplanationPage extends State<ThirdExplanationPage> {
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
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  "You are in the third exam explation.",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 26,
                      fontFamily: 'Alkatra'),
                ),
                SizedBox(
                  height: 250,
                  width: 380,
                  child: Image.asset('assets/images/example3_exam3.png'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const FindingA()),
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
    );
  }
}
