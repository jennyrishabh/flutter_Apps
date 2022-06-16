
//import 'dart:html';

import 'package:flutter/material.dart';


class first extends StatefulWidget {
  StateDemo(){
    print("StateDemo Cons call");
  }

  @override
  _StateDemoState createState() => _StateDemoState();
}

class _StateDemoState extends State<first> {

  // life cycle of stateFul widget's
  @override
  void initState() {
    // this method will run only once
    super.initState();
    _count =0;
    print('init state called !! ');
  }

  @override
  void didChangeDependencies() {
    //TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant first oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("State Clean...");
  }

  @override
  void dispose() {
    // third party plugins we included in our project ... we close them here
    super.dispose();
    print("Http Call Stream Close...");
  }

  late int _count;

  @override
  Widget build(BuildContext context) {
    print("Build Call......");
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.redAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(bottom: 10),child: Text('Sample data 1' , style: TextStyle(color: Colors.black),)) ,
            Padding(padding :EdgeInsets.only(bottom: 10) ,child: Text('Sample data 2' ,style: TextStyle(color: Colors.black),)) ,
            Text('Sample data 3' , style: TextStyle(color: Colors.black),) ,
          ],
        ),
      ),
        // will make the change to the other screen other then the drawer to the requested color
        drawerScrimColor: Colors.transparent,
        appBar: AppBar(
          title: Text('stateFul demo here !!' ,  style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [Padding(padding: EdgeInsets.only(right: 6), child: Icon(Icons.menu , color: Colors.black,))],
          iconTheme: IconThemeData(color: Colors.blueAccent),
        ),
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(colors: [Colors.lightGreen , Colors.tealAccent , Colors.pinkAccent ,Colors.blueAccent , Colors.purple , Colors.yellowAccent , Colors.orangeAccent] , ),
        ),
        //color: Colors.greenAccent,
          child: Text('pressed here : $_count' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 29),),
        alignment: AlignmentDirectional.center,
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.lime,child: Text('+' , style: TextStyle(color: Colors.black , fontSize: 27),),onPressed: (){print('+ is called ');_count++;
        setState(() { print('setstate called !! '); });}
        ,),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}