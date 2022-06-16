//import 'package:firstproject/sceens/first.dart';
import 'package:firstproject/sceens/five.dart';
import 'package:firstproject/sceens/fourth.dart';
import 'package:firstproject/sceens/second.dart';
import 'package:firstproject/sceens/stateFul/EMICalc/emiMain.dart';
import 'package:firstproject/sceens/stateFul/first.dart';
import 'package:firstproject/sceens/third.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: SafeArea(child: Text('this is' ,style: TextStyle(fontSize: 16,color: Colors.yellow,backgroundColor: Colors.blueAccent),))
     //home: first(),
     //home: second(),
     //home : third(),

    // stack demo :
    // home : fourth(),
    // ted app
    //home : five(),

    //stateFul demo(counter increment application)
    //home : first(),

     //EMi calc
     home : emiMain(),

      ),
  );
}