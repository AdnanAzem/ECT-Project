import 'package:ect/Widgets/fixed_position.dart';

class TemplatesFA2 {
  // static String wordGenerate = '';
  static List<FixedPosition> firstTemplateFA(List<String> word) {
    List<FixedPosition> ans = [];
    FixedPosition a = FixedPosition(
      word: word[0],
      top: 50,
      left: 200,
    );
    FixedPosition b = FixedPosition(
      word: word[1],
      bottom: 70,
      right: 130,
    );
    FixedPosition c = FixedPosition(
      word: word[2],
      top: 240,
      left: 255,
    );
    FixedPosition d = FixedPosition(
      word: word[3],
      top: 50,
      right: 100,
    );
    FixedPosition e = FixedPosition(
      word: word[4],
      top: 30,
      bottom: 150,
      left: 50,
    );
    FixedPosition f = FixedPosition(
      word: word[5],
      top: 100,
      bottom: 100,
    );
    FixedPosition g = FixedPosition(
      word: word[6],
      bottom: 135,
      right: 270,
    );
    FixedPosition h = FixedPosition(
      word: word[7],
      top: 115,
      left: 280,
    );
    FixedPosition i = FixedPosition(
      word: word[8],
      bottom: 200,
      right: 50,
    );
    FixedPosition j = FixedPosition(
      word: word[9],
      bottom: 50,
      left: 150,
    );
    FixedPosition k = FixedPosition(
      word: word[10],
      bottom: 50,
    );
    FixedPosition l = FixedPosition(
      word: word[11],
      top: 70,
    );
    FixedPosition m = FixedPosition(
      word: word[12],
      top: 60,
      right: 250,
    );
    FixedPosition n = FixedPosition(
      word: word[13],
      top: 150,
      right: 220,
    );
    FixedPosition o = FixedPosition(
      word: word[14],
      bottom: 120,
      left: 40,
    );

    ans.add(a);
    ans.add(b);
    ans.add(c);
    ans.add(d);
    ans.add(e);
    ans.add(f);
    ans.add(g);
    ans.add(h);
    ans.add(i);
    ans.add(j);
    ans.add(k);
    ans.add(l);
    ans.add(m);
    ans.add(n);
    ans.add(o);

    return ans;
  }
}
