import 'package:firstproject/sceens/stateFul/EMICalc/TextBox.dart';
import 'package:firstproject/sceens/stateFul/EMICalc/pieChart.dart';
import 'package:firstproject/sceens/stateFul/EMICalc/sliderWidget.dart';
import 'package:flutter/material.dart';


/*

Note : here this file is an Sceen and the other dart file used to make this custom sceen is called Widget's
        So , emiMain is Sceen  and textbox  sliderWidget , pieChart , output are the widget's

*/

class emiMain extends StatefulWidget{

  @override
  State<emiMain> createState() => _emiMainState();
}

class _emiMainState extends State<emiMain> {

  late Map<String , double> dataMap;
    int _pricipleAmount=0;
    int _ROI=0;
    int _EMI=0;
  _emiCompute(){

    int amount = int.parse(_txtField1);
    int tenure = _sliderValue.toInt(); //say 12 months

    double pricipleAmount  = ( amount/tenure ) ;

    double rateOfInterest = double.parse(_txtField2) ;
    double ROI = (amount*(rateOfInterest/100))/tenure;

    double EMI = ROI + pricipleAmount;
    _pricipleAmount=pricipleAmount.toInt();
    _EMI=EMI.toInt();
    _ROI=ROI.toInt();
    dataMap={
      "principle amount": pricipleAmount.toDouble(),
      "EMI" : EMI.toDouble(),
      "Total interest": ROI.toDouble()
    };

    setState(() {

    });

  }

  @override
  void initState() {
    super.initState();
    print('init state called !! ');
    _txtField1="";
    _txtField2="";
    dataMap = {
      "":0.0
    };
  }

  //TextEditingController slider = TextEditingController();
  //TextEditingController amount1 = TextEditingController();
  //TextEditingController amount2 = TextEditingController();
  late String _txtField1;
  late String _txtField2;
  _getTextFieldData1(value){
    _txtField1 = value;
  }

  _getTextFieldData2(value){
    _txtField2 = value;
  }

  double _sliderValue=0;
  _getSliderValue(value){
    _sliderValue = value;

    //changed here
    //slider.text = _sliderValue.toInt().toString();

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

     Size _size  = MediaQuery.of(context).size;

     /* Note : here we have used Scaffold ie., an Screen inside of it we have used Widget's */
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('EMI calc !!' ,  style: TextStyle(color: Colors.black),),
        leading: const Icon(Icons.account_balance_wallet_outlined),
        iconTheme: const IconThemeData(color: Colors.blueAccent),
      ),
      body: SingleChildScrollView(
        child: Container(
          //width: double.infinity,
          //height: double.infinity,
          //color: Colors.greenAccent,

          decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.lightGreen , Colors.tealAccent , Colors.pinkAccent ,Colors.blueAccent , Colors.purple , Colors.yellowAccent , Colors.orangeAccent] ,begin: AlignmentDirectional.topStart, end : AlignmentDirectional.bottomEnd ),
          ),

          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              TextBox(getTextFieldData: _getTextFieldData1,hintText: 'enter Amount ',helpertxt: 'Loan Amount is in INT format',prefixIcon: Icon(Icons.account_circle),labelText: 'Loan Amount ',),

              TextBox(getTextFieldData: _getTextFieldData2,helpertxt: 'ROI is in INT format',labelText: 'Rate of Interest ',prefixIcon: Icon(Icons.account_balance_wallet_outlined),hintText: 'enter ROI ',),
                /*
                Padding(
                  padding: EdgeInsets.all(19),
                  child: TextField(
                    onChanged: (String value){
                      print('got the Value from the function Loan Amount $value');
                    },
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 29,color: Colors.pink,),
                    decoration: InputDecoration(helperText: 'Loan Amount is in INT format',labelText: 'Loan Amount ',prefixIcon: Icon(Icons.account_circle),hintText: 'enter Amount ',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.circular(19))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(19),
                  child: TextField(
                    onChanged: (String value){
                      print('got the Value from the function ROI $value');
                    },
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 29,color: Colors.pink,),
                    decoration: InputDecoration(helperText: 'ROI is in INT format',labelText: 'Rate of Interest ',prefixIcon: Icon(Icons.account_balance_wallet_outlined),hintText: 'enter ROI ',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.circular(19))),
                  ),
                ),
                 */

              sliderWidget(_getSliderValue,_sliderValue),

              Container(decoration: BoxDecoration(color: Colors.orangeAccent,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10)),child: Text('sliderValue is ${_sliderValue.toInt()}',style: TextStyle(fontSize: 21,color: Colors.deepPurpleAccent),),),
              SizedBox(height: 29,) ,
              //IconButton(color: Colors.orange,iconSize: 29,hoverColor: Colors.blueAccent,icon: Icon(Icons.search_off_rounded),onPressed: (){print('called icon button');},),
              ElevatedButton(onPressed: (){_emiCompute();}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellowAccent)),child: Text('search !!', style:TextStyle(fontSize: 20,color: Colors.greenAccent)),),

              //Center(child: Text('text field 1 : $_txtField1 and text field 2 : $_txtField2 sliderValue is ${_sliderValue.toInt()}' , style: TextStyle(fontSize: 11),),) ,
              SizedBox(height: _size.height - 710,) ,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(width: _size.width-240,color: Colors.blueAccent,child: Text('principle amount is ${_pricipleAmount}',style: TextStyle(color: Colors.orangeAccent),),) ,
                      SizedBox(height: 19,),
                      Container(width: _size.width-240,color: Colors.blueAccent,child: Text('ROI is $_ROI',style: TextStyle(color: Colors.orangeAccent),),) ,
                      SizedBox(height: 19,),
                      Container(width: _size.width-240,color: Colors.blueAccent,child: Text('EMI is $_EMI',style: TextStyle(color: Colors.orangeAccent),),) ,
                    ],
                  ) ,
                  Column(
                    children: [
                            pieChart(dataMap: dataMap,),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}