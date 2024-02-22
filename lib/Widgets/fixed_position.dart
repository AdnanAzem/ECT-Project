import 'package:ect/Controller/third_exam_funcs.dart';
import 'package:flutter/material.dart';

class FixedPosition extends StatelessWidget {
  final double? right;
  final double? left;
  final double? top;
  final double? bottom;
  final String word;
  // final VoidCallback onClicked;

  const FixedPosition({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.word,
    // required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: TextButton(
        onPressed: () {
          //   correctAnswer();
          // } else {
          //   wrongAnswer();
          // }
          checkAnswer(word);
        },
        child: SizedBox(
          height: 40,
          child: RotatedBox(
            quarterTurns: 0,
            child: Text(
              word,
              style: const TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
