//import 'dart:ffi';
import 'dart:math';
import 'package:ect/View/fourth_exam/fourth_exam_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ect/Model/globals.dart' as globals;

//List<String> res=shuffled();
int final_answer=0;


List<String>  generateRandomNumber() {
  
  

  final _random=Random();
  
   int  _randomNumber1 =(1000 + _random.nextInt(9000)) as int;
   String number1=_randomNumber1.toString();
   int  _randomNumber2 =(1000 + _random.nextInt(9000)) as int;
   String number2=_randomNumber2.toString();
   int  _randomNumber3 =(1000 + _random.nextInt(9000)) as int;
   String number3=_randomNumber3.toString();
   int  _randomNumber4 =(1000 + _random.nextInt(9000)) as int;
   String number4=_randomNumber4.toString(); 
   
    int _randomNumber5 =(1000 + _random.nextInt(9000)) as int;
    String number5=_randomNumber5.toString(); 
    int  _randomNumber6 =(1000 + _random.nextInt(9000)) as int;
    String number6=_randomNumber6.toString();
    int  _randomNumber7 =(1000 + _random.nextInt(9000)) as int;
    String number7=_randomNumber7.toString();
    //int  _randomNumber8 =(1000 + _random.nextInt(9000)) as int;


 
    List<String> str=[number1,number2,number3,number4,number5,number6,number7];// Generates a random 4-digit number
    return str;
}


extension Shuffle on String {
  /// Strings are [immutable], so this getter returns a shuffled string
  /// rather than modifying the original.
  String get shuffled => (split('')..shuffle()).join('');
}

int choosen_index_to_shuffle(){
  final _random=Random();
  
   int  _randomNumber1 =( _random.nextInt(7)) as int;
   print("the number is:"+ _randomNumber1.toString());
   return _randomNumber1;
}

int get_choosen_index_to_shuffle(){
  // String corr=res.last;
  // var correct=  int.parse(corr);
  return final_answer;
}

set_choosen_index_to_shuffle(int n){
 final_answer=n;
}


List<String> shuffled (){
  List <String> original=generateRandomNumber();
  int corr_answer=choosen_index_to_shuffle();
  set_choosen_index_to_shuffle(corr_answer);
  List<String> res=[];
  

  for(int i=0;i<original.length;i++){
    if(corr_answer==i){
      res.add(original.elementAt(i).shuffled);
      res.add(original.elementAt(i));
      //res.elementAt(i).shuffled;

      //print("before shuffled "+original.elementAt(i));
      //print("the shuffled "+original.elementAt(i+1));
    }else{
     // original.elementAt(i)
    res.add(original.elementAt(i));
    final _random=Random();
    int  _randomNumber =(1+ _random.nextInt(49)) as int;
    var n = int.parse(original.elementAt(i).shuffled)+_randomNumber;
    res.add(n.toString());
    }
    
  }
  res.add(corr_answer.toString());
  return res;
}

gotcorrectanswer(){
  globals.score4++;
       globals.stopwatch4.stop();
       globals.time4 = globals.stopwatch4.elapsed;
       globals.roundsTimes4.add(globals.time4);
       print(globals.time4);
       globals.roundCorrectness4.add(true);
       globals.numOfGames4--;
       
       //globals.time4 = (globals.time4 / 2);
       //globals.roundsTimes4.add(globals.time4);
       print(globals.time4);
       //Get.offAll(const NumberComparison());
}

gotwronganswer(){
  //globals.time4 = (globals.time4 + (globals.time4 / 4));
  globals.roundsTimes4.add(globals.time4);
  globals.roundCorrectness4.add(false);
  print('wrong:' + globals.time4.toString());
  globals.numOfWrongAnswers4--;
  //Get.offAll(const NumberComparison());
}

whenUpdate4() {
  globals.roundCorrectness4.add(false);
  //globals.roundsTimes4.add(globals.time4);
}




// String shuffle(String s){
//   String shuffled=" ";
//   for(int i=0;i<s.length;i++){
//     shuffled.indexOf()

//   }
// }