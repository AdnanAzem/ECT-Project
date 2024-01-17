import 'package:flutter/material.dart';
import 'package:ect/Model/globals.dart' as globals;
import 'package:ect/Controller/second_exam_funcs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class Double extends StatefulWidget {
  const Double({super.key});

  @override
  State<Double> createState() => _Double();
}

class _Double extends State<Double> {
  @override
  void initState() {
    super.initState();
    globals.stopwatch.reset();
    globals.stopwatch.start();
  }

  @override
  Widget build(BuildContext context) {
    globals.gamesTimes++;
    List<List<IconData>> cards = chooseRandomCard();
    List<IconData> cardA = cards[0];
    List<IconData> cardB = cards[1];
    globals.icon = findSimilarIcon(cardA, cardB);
    List<List<Positioned>> templates =
        chooseTemplate(globals.version, cardA, cardB);
    List<Positioned> templateA = templates[0];
    List<Positioned> templateB = templates[1];
    globals.leftOrRight = 0;
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
            const SizedBox(height: 100),
            const Text(
              " Please click on the only symbol on the left card that matches a symbol on the right card:",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Alkatra'),
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 400,
                    width: 400,
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
                        templateA[0],
                        templateA[1],
                        templateA[2],
                        templateA[3],
                        templateA[4],
                        templateA[5],
                        templateA[6],
                        templateA[7],
                      ],                      
                    ),
                  ),
                  Container(
                    height: 400,
                    width: 400,
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
                        templateB[0],
                        templateB[1],
                        templateB[2],
                        templateB[3],
                        templateB[4],
                        templateB[5],
                        templateB[6],
                        templateB[7],
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
