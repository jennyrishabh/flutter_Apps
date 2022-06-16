import 'package:flutter/material.dart';

class sliderWidget extends StatelessWidget{
  late Function _getSliderValue;
  late double _value;
  sliderWidget(Function getSliderValue , double value){
    this._getSliderValue = getSliderValue;
    this._value = value;
  }

  void initState() {
    _value =0;
    print('init state called !! ');
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
        activeColor: Colors.orangeAccent,
        inactiveColor: Colors.blueAccent,
        min: 0,max: 25,
        label: 'Tenure (Duration : Max 25 yr)',
        value: _value ,
        onChanged: (value){
          print('Slider is moved !! value here is : ${value.toInt()}');
          _getSliderValue(value);
        }
    );
  }
}