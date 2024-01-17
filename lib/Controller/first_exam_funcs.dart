import 'dart:math';
import 'package:ect/Model/globals.dart' as globals;
import 'package:flutter/material.dart';

whenChooseButton1() {
  globals.score1++;
  globals.roundCorrectness.add(true);
  globals.time1 = (globals.time1 / 2);
  globals.roundsTimes.add(globals.time1);
  print(globals.time1);
}

whenChooseButton2() {
  globals.time1 = (globals.time1 + (globals.time1 / 4));
  globals.roundsTimes.add(globals.time1);
  globals.roundCorrectness.add(false);
  print('wrong:' + globals.time1.toString());
  globals.numOfWrongAnswers1--;
}

whenUpdate() {
  globals.roundCorrectness.add(false);
  globals.roundsTimes.add(globals.time1);
}

whenChooseButtonDNS() {
  globals.time1 = (globals.time1 + (globals.time1 / 4));
  globals.roundsTimes.add(globals.time1);
  globals.roundCorrectness.add(false);
  globals.numOfWrongAnswers1--;
}

CustomPainter chooseSide() {
  List<CustomPainter> list = [MyPainterLeft(), MyPainterRight()];
  final randomSide = Random();
  CustomPainter ans = list[randomSide.nextInt(list.length)];
  globals.sideTemp = -1;
  // left =0
  if (ans == list[0]) {
    globals.sideTemp = 0;
  }
  // right=1
  if (ans == list[1]) {
    globals.sideTemp = 1;
  }
  globals.roundSides.add(globals.sideTemp);
  print(globals.sideTemp);
  return ans;
}

class MyPainterRight extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p1 = Offset(50, 50);
    const p2 = Offset(50, 300);
    const p3 = Offset(50, 50);
    const p4 = Offset(250, 50);
    const p5 = Offset(250, 50);
    const p6 = Offset(250, 150);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(p1, p2, paint);
    canvas.drawLine(p3, p4, paint);
    canvas.drawLine(p5, p6, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainterRightSecond extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p7 = Offset(250, 150);
    const p8 = Offset(250, 300);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(p7, p8, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainterLeft extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p1 = Offset(50, 50);
    const p2 = Offset(50, 150);
    const p3 = Offset(50, 50);
    const p4 = Offset(250, 50);
    const p5 = Offset(250, 50);
    const p6 = Offset(250, 300);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(p1, p2, paint);
    canvas.drawLine(p3, p4, paint);
    canvas.drawLine(p5, p6, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainterLeftSecond extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p7 = Offset(50, 50);
    const p8 = Offset(50, 300);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(p7, p8, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
