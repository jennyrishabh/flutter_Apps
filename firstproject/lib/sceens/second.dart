import 'package:flutter/material.dart';

class second extends StatelessWidget{

  _getContainer(Color color, {int w = 70 , int h = 70}){
    return Container(color: color , width: w.toDouble(),  height: h.toDouble(),);
  }

  _getImage(String url , {int flex =1}){
    return Expanded(child: Image.network(url) , flex: flex,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                  //_getContainer(Colors.blueAccent) ,  _getContainer(Colors.yellowAccent, w: 150 ) ,  _getContainer(Colors.greenAccent)
                _getImage('https://purepng.com/public/uploads/medium/sedan-ydt.png') , _getImage('https://purepng.com/public/uploads/medium/new-2018-mazda3-sport-base-lxr.png' , flex: 2) , _getImage('https://purepng.com/public/uploads/large/purepng.com-lamborghini-aventador-sv-roadster-blue-carcarvehicletransportlamborghini-961524643481ixbuc.png') ,
              ],
            ),
        ),
    );
  }



}