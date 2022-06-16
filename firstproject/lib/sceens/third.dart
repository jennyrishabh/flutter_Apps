import 'package:flutter/material.dart';

class third extends StatelessWidget{

  final String _url = 'https://www.pngplay.com/wp-content/uploads/7/Grocery-Items-Transparent-Background.png';

  _getContainer(String name ,{double w = 160, double h = 160}){
    return Container(
        alignment: AlignmentDirectional.bottomCenter,
        width: w,
        height: h,
        //color: Colors.white,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(_url)),
          color: Colors.white,
          border: Border.all(width: 0.6 , style: BorderStyle.solid , color: Colors.black),
          boxShadow: [BoxShadow(color: Colors.black54 , blurRadius: 1.5)],
        ),
        child: Text(name ,style: TextStyle(decorationStyle: TextDecorationStyle.solid),),

      );
  }


  _getContainer1(String name ,{double w = 160, double h = 160}){
    return Expanded(
      child: Card(
        color: Colors.white,
        child: Container(
          alignment: AlignmentDirectional.bottomCenter,
          width: w,
          height: h,
          //color: Colors.white,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(_url)),
            //color: Colors.white,
          ),
          child: Text(name ,),
        ),
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Categories' , style: TextStyle(color: Colors.tealAccent , fontSize: 24,),textAlign: TextAlign.end,),
        actions: [Icon(Icons.search) , SizedBox(width: 5,)],
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _getContainer('ABC') , _getContainer('ABC') ,_getContainer('ABC') ,_getContainer('ABC')
                ],
              ) ,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _getContainer('ABC') , _getContainer('ABC') , _getContainer('ABC') , _getContainer('ABC')
                ],
              ),
              /* try this example also for Expanded Widget
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _getContainer1('ABC') , _getContainer1('ABC') ,_getContainer1('ABC') ,_getContainer1('ABC')
                ],
              ) ,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _getContainer1('ABC') , _getContainer1('ABC') , _getContainer1('ABC') , _getContainer1('ABC')
                ],
              ),
               */
            ],
          ),
      ),
    );
  }

}