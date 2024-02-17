import 'dart:math';

import 'package:ect/View/third_exam/templatesFA_first_version.dart';
import 'package:flutter/material.dart';

List<Positioned> chooseRandomTemplateFA1(List<String> words) {
  List<int> temp = [
    1,
    2,
    3,
    4,
    5,
  ];
  final randomTemplate = Random();
  List<Positioned> tempA = [];
  tempA = TemplatesFA1.firstTemplateFA(words);
  List<Positioned> ans = tempA;
  return ans;
}

List<Positioned> chooseTemplate(int x, words) {
  // if (x == 2) {
  //   return chooseRandomTemplate2(cardA, cardB);
  // } else {
  //   return chooseRandomTemplate1(cardA, cardB);
  // }
  return (chooseRandomTemplateFA1(words));
}
