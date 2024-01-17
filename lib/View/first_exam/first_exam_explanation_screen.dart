import 'package:flutter/material.dart';
import 'package:ect/View/first_exam/first_exam_screen.dart';

class FirstExplanationPage extends StatefulWidget {
  const FirstExplanationPage({super.key});

  @override
  State<FirstExplanationPage> createState() => _FirstExplanationPage();
}

class _FirstExplanationPage extends State<FirstExplanationPage> {
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
              "On the next screen, one of two shapes will be presented to you for a very short time:",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
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
                  height: 110,
                  child: Image.asset('assets/images/leftEx.png'),
                ),
                const SizedBox(
                  width: 300,
                ),
                SizedBox(
                  height: 110,
                  child: Image.asset('assets/images/rightEx.png'),
                ),
              ],
            )),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 400),
                Text(
                  "Left side",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      fontFamily: 'Alkatra'),
                ),
                SizedBox(width: 270),
                Text(
                  "Right side",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      fontFamily: 'Alkatra'),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Text(
              "After this time the shape will change into this shape:",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  fontFamily: 'Alkatra'),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 100,
              child: Image.asset('assets/images/FullShape.png'),
            ),
            const SizedBox(height: 40),
            const Text(
              "You will need to choose what was the side of the shape before it changed.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  fontFamily: 'Alkatra'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sides()),
                );
              },
              child: Container(
                height: 60,
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
