import 'package:flutter/material.dart';

class fourth extends StatelessWidget{

  //const fourth(Key? key) : super(key: key);


  _getContainer(String name , Color color,{double w = 50, double h = 50}){
    return Container(
      alignment: AlignmentDirectional.bottomCenter,
      width: w,
      height: h,
      color: color,
      child: Text(name ,style: TextStyle(decorationStyle: TextDecorationStyle.solid),),

    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              _getContainer('test3', Colors.redAccent , h: 150 , w: 150) ,
              _getContainer('test2', Colors.blueAccent , h: 80 , w: 80) ,
              Positioned( child :_getContainer('test1' , Colors.greenAccent) , left: 23) ,
            ],
          ),
        ),
    );
  }

}