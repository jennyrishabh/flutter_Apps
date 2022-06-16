import 'dart:math';

import 'package:flutter/material.dart';

class first extends StatelessWidget{

  first(){

  }
  int _count=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(child: Text('+' , style: TextStyle(color: Colors.black),),onPressed: (){_count++;print('+ is pressed : '+_count.toString());},backgroundColor: Colors.greenAccent,),
      appBar: AppBar(
        //leading: Icon(Icons.menu_open),
        actions: [IconButton(onPressed: (){print('phone icon pressed !!');}, icon: Icon(Icons.phone_android_rounded)),Icon(Icons.search , color: Colors.black,) , SizedBox(width: 25,) ,  Icon(Icons.add_alarm) ,SizedBox(width: 5,)],
        title: const Text('user page' , style: TextStyle(color: Colors.yellowAccent),),
        backgroundColor: Colors.greenAccent,
      ),
      backgroundColor: Colors.orangeAccent,
      // for fetching any images from url ... try for GIF file also
      //body: Image.network('https://i.pinimg.com/736x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg' , width: 199.0),

      // for custom images in the local system : goto pubspec.yaml file > assets tag
      //body:Image.asset('images/profile.png' , width: 199.0,),

      /*
      body:Container(
        //height: 400,
        //width: 400,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.pinkAccent , blurRadius: 10), BoxShadow(color: Colors.green , blurRadius: 20)],
          borderRadius: BorderRadius.circular(10.0),
            border: Border.all(width: 3.0 , color: Colors.black , style: BorderStyle.solid,),
            gradient: LinearGradient(begin: Alignment.topLeft , end: Alignment.bottomRight , colors: [Colors.lightGreen , Colors.tealAccent , Colors.pinkAccent ,Colors.blueAccent])
        ),
        //color: Colors.redAccent,
        //child: Text('android app!!' ,style: TextStyle(fontSize: 40),),
        child: Image.network('https://cdn3.iconfinder.com/data/icons/avatars-flat/33/man_5-1024.png'),
      ),
      */

      body: Container(
        height: 300,
        width: 300,
        //transform: Matrix4.rotationZ(pi/4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          //borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2,color: Colors.black , style: BorderStyle.solid),
          boxShadow: [BoxShadow(color: Colors.blueAccent , blurRadius: 20)],
          gradient: SweepGradient(colors: [Colors.lightGreen , Colors.tealAccent , Colors.pinkAccent ,Colors.blueAccent],),
          image: DecorationImage(image: NetworkImage('https://cdn3.iconfinder.com/data/icons/avatars-flat/33/man_5-1024.png')),
        ),
        //child: Image.network('https://cdn3.iconfinder.com/data/icons/avatars-flat/33/man_5-1024.png'),
      ),

      //body: SafeArea(child: Center(child: Text('hello there !!' ,style: TextStyle(fontSize: 30,color: Colors.purpleAccent)))),
    );
  }

}