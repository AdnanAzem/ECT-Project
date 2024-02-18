//import 'dart:html';
import 'dart:async';
import 'dart:math';

import 'package:ect/Controller/fourth_exam_funcs.dart';
import 'package:ect/View/fourth_exam/end_fourth_test_screen.dart';
import 'package:ect/main.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:ect/Model/globals.dart' as globals;


class NumberComparison extends StatefulWidget {
  const NumberComparison({super.key});


  @override
  State<NumberComparison> createState() => _NumberComparisonState();
}

class _NumberComparisonState extends State<NumberComparison> {
  List <String> str=shuffled();
  int the_answer=final_answer;
  

  // void initState() {
  //   super.initState();
  // WidgetsBinding.instance.addPostFrameCallback((_) => Timer(
  //         Duration(milliseconds: (globals.time1).toInt()),
  //         () {
  //           setState(() {
              
  //           });
  //         },
  //       ));
  // }


  

  @override
  Widget build(BuildContext context) {

   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600]?.withOpacity(0.5),
      ),
      body:  Column(
        children:[
          const Text(
              " Please choose your answer",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Alkatra'),
            ),
           SizedBox(
                height:50,
              ),
          Row(
            children: [
              SizedBox(
             width: 400,
             ),
            TextButton(
              onPressed: ()   {},
              child: 
              Text(
                str.first,
             style: TextStyle(fontSize: 30),)),

            SizedBox(
            width: 150,
            ), 
           
            GFIconButton(onPressed: (){
             
              if(the_answer==0){
                gotcorrectanswer();
                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
              }else{
                if(globals.numOfWrongAnswers4>0){
                  gotwronganswer();
                  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
                }

              
              else {
                              whenUpdate4();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EndOfFourthTest()),
                              );
              }
              }
            },
            icon: Icon(Icons.check_box),),
            
            SizedBox(
            width: 150,
            ),
             TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(1),
             style: TextStyle(fontSize: 30),)),
            
            ],
          ),
          SizedBox(
                height:50,
              ),
          Row(
            children: [
              SizedBox(
             width: 400,
             ),
            TextButton(
              onPressed: ()   {
                
              },
              child: Text(str.elementAt(2),
             style: TextStyle(fontSize: 30),)),

            SizedBox(
            width: 150,
            ), 
           
            GFIconButton(onPressed: (){
              
              if(the_answer==1){
                gotcorrectanswer();
                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
              }else{
                if(globals.numOfWrongAnswers4>0){
                  gotwronganswer();
                  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
                }

              
              else {
                              whenUpdate4();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EndOfFourthTest()),
                              );
              }
              }  
            },
           
            icon: Icon(Icons.check_box),),
            
            SizedBox(
            width: 150,
            ),
             TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(3),
             style: TextStyle(fontSize: 30),)),
            
            ],
          ),
          SizedBox(
                height:50,
              ),
          Row(
            children: [
              SizedBox(
             width: 400,
             ),
            TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(4),
             style: TextStyle(fontSize: 30),)),

            SizedBox(
            width: 150,
            ), 
           
            GFIconButton(onPressed: (){
             
              if(the_answer==2){
                gotcorrectanswer();
                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
              }else{
                if(globals.numOfWrongAnswers4>0){
                  gotwronganswer();
                  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
                }

              
              else {
                              whenUpdate4();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EndOfFourthTest()),
                              );
              }
            }
            },
            
            icon: Icon(Icons.check_box),),
            
            SizedBox(
            width: 150,
            ),
             TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(5),
             style: TextStyle(fontSize: 30),)),
            
            ],
          ),
          SizedBox(
                height:50,
              ),
          Row(
            children: [
              SizedBox(
             width: 400,
             ),
            TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(6),
             style: TextStyle(fontSize: 30),)),

            SizedBox(
            width: 150,
            ), 
           
            GFIconButton(onPressed: (){
            
              if(the_answer==3){
                gotcorrectanswer();
                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
              }else{
                if(globals.numOfWrongAnswers4>0){
                  gotwronganswer();
                  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
                }

              
              else {
                              whenUpdate4();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EndOfFourthTest()),
                              );
              }
              }
            },
           
            icon: Icon(Icons.check_box),),
            
            SizedBox(
            width: 150,
            ),
             TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(7),
             style: TextStyle(fontSize: 30),)),
            
            ],
          ),
          SizedBox(
                height:50,
              ),
          Row(
            children: [
              SizedBox(
             width: 400,
             ),
            TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(8),
             style: TextStyle(fontSize: 30),)),

            SizedBox(
            width: 150,
            ), 
           
            GFIconButton(onPressed: (){
              
              if(the_answer==4){
                gotcorrectanswer();
                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
              }else{
                if(globals.numOfWrongAnswers4>0){
                  gotwronganswer();
                  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                    );
              }
              else {
                              whenUpdate4();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EndOfFourthTest()),
                              );
              }
              } 
            },
            
            icon: Icon(Icons.check_box),),
            
            SizedBox(
            width: 150,
            ),
             TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(9),
             style: TextStyle(fontSize: 30),)),
            
            ],
          ),
          SizedBox(
                height:50,
              ),
          Row(
            children: [
              SizedBox(
             width: 400,
             ),
            TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(10),
             style: TextStyle(fontSize: 30),)),

            SizedBox(
            width: 150,
            ), 
           
            GFIconButton(onPressed: (){
              
              if(the_answer==5){
                gotcorrectanswer();
                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
              }else{
                if(globals.numOfWrongAnswers4>0){
                  gotwronganswer();
                  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
                }

              
              else {
                              whenUpdate4();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EndOfFourthTest()),
                              );
              }
              }
            },
            icon: Icon(Icons.check_box),),
            
            SizedBox(
            width: 150,
            ),
             TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(11),
             style: TextStyle(fontSize: 30),)),
            
            ],
          ),
          SizedBox(
                height:50,
              ),
          Row(
            children: [
              SizedBox(
             width: 400,
             ),
            TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(12),
             style: TextStyle(fontSize: 30),)),

            SizedBox(
            width: 150,
            ), 
           
            GFIconButton(onPressed: (){
             
              if(the_answer==6){
                gotcorrectanswer();
                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
              }else{
                if(globals.numOfWrongAnswers4>0){
                  gotwronganswer();
                  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NumberComparison()),
                              );
                }
              else {
                              whenUpdate4();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EndOfFourthTest()),
                              );
              }
            }
            },
            icon: Icon(Icons.check_box),),
            
            SizedBox(
            width: 150,
            ),
             TextButton(
              onPressed: ()   {},
              child: Text(str.elementAt(13),
             style: TextStyle(fontSize: 30),)),
            
            ],
          ),
       
          
        ]
      ),
    );
  }
}