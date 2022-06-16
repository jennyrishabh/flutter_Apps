import 'package:flutter/material.dart';

class TextBox extends StatelessWidget{

  late String helpertxt ;
  late String labelText;
  late Icon prefixIcon;
  late String hintText;
  late Function getTextFieldData;
  //late TextEditingController tc;

  TextBox({required String helpertxt,required String labelText,required Icon prefixIcon,required String hintText ,required Function getTextFieldData}){
    this.helpertxt = helpertxt;
    this.labelText = labelText;
    this.prefixIcon = prefixIcon;
    this.hintText = hintText;
    this.getTextFieldData = getTextFieldData;
    //this.tc = tc;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(19),
      child: TextField(
        //controller: tc,
        onChanged: (String value){
          //print('got the Value from the function $value');
          getTextFieldData(value);
        },
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 29,color: Colors.pink,),
        decoration: InputDecoration(helperText: helpertxt,labelText: labelText,prefixIcon: prefixIcon,hintText: hintText,hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.circular(19))),
      ),
    );
  }
}