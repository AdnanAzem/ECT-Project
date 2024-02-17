import 'package:flutter/material.dart';

class TemplatesFA1 {
  static List<Positioned> firstTemplateFA(List<String> word) {
    List<Positioned> ans = [];
    Positioned a = Positioned(
      left: 200,
      top: 50,
      child: TextButton(
        onPressed: () {},
        child: SizedBox(
          height: 70,
          child: RotatedBox(
            quarterTurns: 78,
            child: Text(
              "ADNAN",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
      ),
    );
    Positioned b = Positioned(
      right: 130,
      bottom: 70,
      child: TextButton(
        onPressed: () {},
        child: SizedBox(
          height: 80,
          child: RotatedBox(quarterTurns: 0, child: Text("B")),
        ),
      ),
    );
    Positioned c = Positioned(
      left: 255,
      top: 240,
      child: TextButton(
        onPressed: () {},
        child: SizedBox(
          height: 70,
          child: RotatedBox(quarterTurns: 30, child: Text("C")),
        ),
      ),
    );
    Positioned d = Positioned(
      right: 230,
      top: 50,
      child: TextButton(
        onPressed: () {},
        child: SizedBox(
          height: 70,
          child: RotatedBox(quarterTurns: 180, child: Text("D")),
        ),
      ),
    );
    Positioned e = Positioned(
      top: 200,
      left: 50,
      bottom: 50,
      child: TextButton(
        onPressed: () {},
        child: SizedBox(
          height: 70,
          child: RotatedBox(quarterTurns: 67, child: Text("E")),
        ),
      ),
    );
    Positioned f = Positioned(
      top: 100,
      bottom: 100,
      child: TextButton(
        onPressed: () {},
        child: SizedBox(
          height: 70,
          child: RotatedBox(quarterTurns: 18, child: Text("F")),
        ),
      ),
    );
    Positioned g = Positioned(
      left: 20,
      top: 135,
      child: TextButton(
        onPressed: () {},
        child: SizedBox(
          height: 70,
          child: RotatedBox(quarterTurns: 40, child: Text("G")),
        ),
      ),
    );
    Positioned h = Positioned(
      left: 280,
      top: 115,
      child: TextButton(
        onPressed: () {},
        child: SizedBox(
          height: 70,
          child: RotatedBox(quarterTurns: 78, child: Text("G")),
        ),
      ),
    );

    ans.add(a);
    ans.add(b);
    ans.add(c);
    ans.add(d);
    ans.add(e);
    ans.add(f);
    ans.add(g);
    ans.add(h);

    return ans;
  }
}
