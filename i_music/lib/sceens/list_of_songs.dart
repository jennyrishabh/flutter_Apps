import 'package:flutter/material.dart';

class list_of_songs extends StatefulWidget{

  list_of_songs(){

  }

  _list_of_songs_state createState() => _list_of_songs_state();

}

class _list_of_songs_state extends State<list_of_songs>{

  @override
  Widget build(BuildContext btx){
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('Music App',style: TextStyle(color: Colors.blueAccent,fontSize: 22),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [Padding(padding: EdgeInsets.only(right: 10),child: Icon(Icons.search_off_rounded))],
        ),
        body: Container(

        ),
        drawer: Drawer(

        ),
    );
  }
}
