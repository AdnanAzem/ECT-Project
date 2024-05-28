import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../View/second_exam/end_second_test_screen.dart';
import '../View/second_exam/second_exam_screen.dart';
import '../View/second_exam/templates_first_version.dart';
import '../View/second_exam/templates_second_version.dart';
import 'package:ect/Model/globals.dart' as globals;

updateValuesDouble1() {
  globals.score2++;
  globals.stopwatch.stop();
  globals.time2 = globals.stopwatch.elapsed;
  globals.rountimes.add(globals.time2);
  globals.roundsBool.add(true);
  if (globals.leftOrRight == 2) {
    globals.numClickOnRight++;
  }
  print(globals.stopwatch.elapsed);
  Get.offAll(const Double());
  globals.numOfGames--;
  if (globals.numOfGames == 0) {
    globals.rountimes.add(globals.time2);
    Get.offAll(const EndOfSecondTest());
  }
}

updateValuesDouble2() {
  globals.roundsBool.add(false);
  globals.numOfGames--;
  globals.wrongAnswersML++;
  // if (globals.numOfWrongAnswers2 > 0) {
  if (globals.numOfGames > 0) {
    globals.rountimes.add(globals.time2);
    // globals.numOfWrongAnswers2--;
    
  } else {
    globals.rountimes.add(globals.time2);
    Get.offAll(const EndOfSecondTest());
  }
}

List<List<IconData>> createCards() {
  List<List<IconData>> cards = [];
  List<IconData> icons = [
    Icons.umbrella,
    Icons.beach_access,
    Icons.grade_outlined,
    Icons.alarm,
    Icons.airplanemode_active_rounded,
    Icons.bedtime_rounded,
    Icons.sanitizer,
    Icons.favorite_border,
    Icons.cloud,
    Icons.sunny,
    Icons.house,
    Icons.park,
    Icons.local_florist,
    Icons.stream,
    Icons.tag_faces_sharp,
    Icons.anchor_rounded,
    Icons.bolt_sharp,
    Icons.wine_bar_rounded,
    Icons.wb_incandescent_outlined,
    Icons.watch_outlined,
    Icons.vpn_key_outlined,
    Icons.water_drop_outlined,
    Icons.volume_up,
    Icons.blender,
    Icons.pets,
    Icons.cruelty_free_outlined,
    Icons.agriculture,
    Icons.fire_truck,
    Icons.local_cafe,
    Icons.golf_course,
    Icons.icecream_outlined,
    Icons.fitness_center,
    Icons.headphones,
    Icons.grid_3x3,
    Icons.battery_charging_full,
    Icons.sports_baseball,
    Icons.toys,
    Icons.pedal_bike,
    Icons.business_center,
    Icons.cut,
    Icons.point_of_sale,
    Icons.keyboard,
    Icons.palette_outlined,
    Icons.hourglass_bottom_sharp,
    Icons.child_friendly,
    Icons.ac_unit,
    Icons.check_circle,
    Icons.format_paint,
    Icons.man,
    Icons.snowmobile,
    Icons.castle_sharp,
    Icons.filter_vintage,
    Icons.attach_file,
    Icons.attractions_outlined,
    Icons.sports,
    Icons.shutter_speed_outlined,
    Icons.checkroom,
    Icons.shower,
  ];

  int n = 7; //number of symbols on each card is 8 so n=8-1

  for (int i = 0; i < n + 1; i++) {
    cards.add([icons[1]]);
    for (int j = 0; j < n; j++) {
      cards[i].add(icons[(j + 1) + (i * n) + 1]);
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      cards.add([icons[i + 2]]);
      for (int k = 0; k < n; k++) {
        int val = ((n + 1) + (n * k) + ((i * k) + j) % n) + 1;
        cards[cards.length - 1].add(icons[val]);
      }
    }
  }
  return cards;
}

List<List<IconData>> chooseRandomCard() {
  List<List<IconData>> temp = createCards();
  final randomCard = Random();
  List<IconData> temp1 = temp[randomCard.nextInt(temp.length)];
  List<IconData> temp2 = temp[randomCard.nextInt(temp.length)];
  if (listEquals(temp1, temp2) == true) {
    while (listEquals(temp1, temp2) == true) {
      temp2 = temp[randomCard.nextInt(temp.length)];
    }
  }
  List<List<IconData>> ans = [temp1, temp2];
  return ans;
}

List<List<Positioned>> chooseRandomTemplate1(
    List<IconData> cardA, List<IconData> cardB) {
  List<int> temp = [
    1,
    2,
    3,
    4,
    5,
  ];
  final randomTemplate = Random();
  int temp1 = temp[randomTemplate.nextInt(temp.length)];
  int temp2 = temp[randomTemplate.nextInt(temp.length)];
  if (temp1 == temp2) {
    while (temp1 == temp2) {
      temp2 = temp[randomTemplate.nextInt(temp.length)];
    }
  }

  List<Positioned> tempA = [];
  List<Positioned> tempB = [];

  if (temp1 == 1) {
    tempA = Templates1.firstTemplate(cardA);
  }
  if (temp1 == 2) {
    tempA = Templates1.secondTemplate(cardA);
  }
  if (temp1 == 3) {
    tempA = Templates1.thirdTemplate(cardA);
  }
  if (temp1 == 4) {
    tempA = Templates1.fourthTemplate(cardA);
  }
  if (temp1 == 5) {
    tempA = Templates1.fifthTemplate(cardA);
  }

  if (temp2 == 1) {
    tempB = Templates1.firstTemplate(cardB);
  }
  if (temp2 == 2) {
    tempB = Templates1.secondTemplate(cardB);
  }
  if (temp2 == 3) {
    tempB = Templates1.thirdTemplate(cardB);
  }
  if (temp2 == 4) {
    tempB = Templates1.fourthTemplate(cardB);
  }
  if (temp2 == 5) {
    tempB = Templates1.fifthTemplate(cardB);
  }

  List<List<Positioned>> ans = [tempA, tempB];
  return ans;
}

List<List<Positioned>> chooseRandomTemplate2(
    List<IconData> cardA, List<IconData> cardB) {
  List<int> temp = [
    1,
    2,
    3,
    4,
    5,
  ];
  final randomTemplate = Random();
  int temp1 = temp[randomTemplate.nextInt(temp.length)];
  int temp2 = temp[randomTemplate.nextInt(temp.length)];
  if (temp1 == temp2) {
    while (temp1 == temp2) {
      temp2 = temp[randomTemplate.nextInt(temp.length)];
    }
  }

  List<Positioned> tempA = [];
  List<Positioned> tempB = [];

  if (temp1 == 1) {
    tempA = Templates2.firstTemplate(cardA);
  }
  if (temp1 == 2) {
    tempA = Templates2.secondTemplate(cardA);
  }
  if (temp1 == 3) {
    tempA = Templates2.thirdTemplate(cardA);
  }
  if (temp1 == 4) {
    tempA = Templates2.fourthTemplate(cardA);
  }
  if (temp1 == 5) {
    tempA = Templates2.fifthTemplate(cardA);
  }

  if (temp2 == 1) {
    tempB = Templates2.firstTemplate(cardB);
  }
  if (temp2 == 2) {
    tempB = Templates2.secondTemplate(cardB);
  }
  if (temp2 == 3) {
    tempB = Templates2.thirdTemplate(cardB);
  }
  if (temp2 == 4) {
    tempB = Templates2.fourthTemplate(cardB);
  }
  if (temp2 == 5) {
    tempB = Templates2.fifthTemplate(cardB);
  }

  List<List<Positioned>> ans = [tempA, tempB];
  return ans;
}

List<List<Positioned>> chooseTemplate(int x, cardA, cardB) {
  if (x == 2) {
    return chooseRandomTemplate2(cardA, cardB);
  } else {
    return chooseRandomTemplate1(cardA, cardB);
  }
}

IconData findSimilarIcon(List<IconData> a, List<IconData> b) {
  IconData ans = Icons.abc;
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < b.length; j++) {
      if (a[i] == b[j]) {
        ans = a[i];
      }
    }
  }
  return ans;
}

Map<IconData, Color> icons_color = {
  Icons.umbrella: Colors.amber,
  Icons.beach_access: Colors.black,
  Icons.grade_outlined: Colors.pink,
  Icons.alarm: Colors.red,
  Icons.airplanemode_active_rounded: Colors.blue,
  Icons.bedtime_rounded: Colors.brown,
  Icons.sanitizer: Colors.purple,
  Icons.favorite_border: Colors.cyan,
  Icons.cloud: Colors.orange,
  Icons.sunny: Colors.lime,
  Icons.house: Colors.orangeAccent,
  Icons.park: Colors.teal,
  Icons.local_florist: Colors.grey,
  Icons.stream: Colors.yellow,
  Icons.tag_faces_sharp: Colors.indigo,
  Icons.anchor_rounded: Colors.blueAccent,
  Icons.bolt_sharp: Colors.blueGrey,
  Icons.wine_bar_rounded: Colors.cyanAccent,
  Icons.wb_incandescent_outlined: Colors.deepOrange,
  Icons.watch_outlined: Colors.deepPurple,
  Icons.vpn_key_outlined: Colors.deepPurpleAccent,
  Icons.water_drop_outlined: Colors.green,
  Icons.volume_up: Colors.greenAccent,
  Icons.blender: Colors.lightBlue,
  Icons.pets: Colors.lightGreen,
  Icons.cruelty_free_outlined: Colors.lightGreenAccent,
  Icons.agriculture: Colors.redAccent,
  Icons.fire_truck: Colors.lime.shade900,
  Icons.local_cafe: Colors.green.shade900,
  Icons.golf_course: Colors.teal.shade900,
  Icons.icecream_outlined: Colors.cyan.shade900,
  Icons.fitness_center: Colors.lightBlue.shade900,
  Icons.headphones: Colors.deepPurple.shade900,
  Icons.grid_3x3: Colors.blueGrey.shade900,
  Icons.battery_charging_full: Colors.brown.shade50,
  Icons.sports_baseball: Colors.brown.shade300,
  Icons.toys: Colors.grey.shade900,
  Icons.pedal_bike: Colors.pink.shade100,
  Icons.business_center: Colors.pink.shade200,
  Icons.cut: Colors.pink.shade900,
  Icons.point_of_sale: Colors.pinkAccent.shade700,
  Icons.keyboard: Colors.red.shade600,
  Icons.palette_outlined: Colors.lightBlue.shade100,
  Icons.hourglass_bottom_sharp: Colors.lightBlue.shade200,
  Icons.child_friendly: Colors.blueAccent.shade100,
  Icons.ac_unit: Colors.indigo.shade50,
  Icons.check_circle: Colors.purple.shade100,
  Icons.format_paint: Colors.grey.shade800,
  Icons.man: Colors.red.shade900,
  Icons.air: Colors.redAccent.shade400,
  Icons.castle_sharp: Colors.orange.shade800,
  Icons.filter_vintage: Colors.amber.shade700,
  Icons.attach_file: Colors.lime.shade700,
  Icons.attractions_outlined: Colors.limeAccent.shade400,
  Icons.sports: Colors.green.shade200,
  Icons.shutter_speed_outlined: Colors.tealAccent.shade100,
  Icons.checkroom: Colors.cyanAccent.shade400,
  Icons.shower: Colors.indigo.shade300,
};
