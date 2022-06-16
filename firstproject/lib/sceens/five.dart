import 'package:firstproject/model/five_data.dart';
import 'package:firstproject/repo/post_operation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class five extends StatelessWidget{

  late List<five_data> posts = [];

  _getIcons(IconData db){
    return Icon(db);
  }

  five(){
    print('first the constructor is called here !!');
    post_operation postOperation = post_operation.getInstance();
    posts = postOperation.getPosts();

  }


  _getAppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            //mainAxisSize: MainAxisSize.min,
            children: [
              Text('TED ' , style: GoogleFonts.acme(color: Colors.redAccent , fontWeight: FontWeight.bold , fontSize: 23),),
              Text('Newest ' , style: GoogleFonts.acme(color: Colors.redAccent , fontWeight: FontWeight.w200 , fontSize: 23),),
              Icon(Icons.arrow_drop_down_rounded , color: Colors.red,size: 34,),
            ],
          ) ,
          Row(
            children: [
              Icon(Icons.more_vert ,color: Colors.red,size: 34, ),
            ],
          )
        ],
      ),
    );
  }

  Positioned _getPositioned(Size deviceSize){
    return
      Positioned(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('AAAA!!' , style: TextStyle(color: Colors.white),) ,
                Text('BBBB!!' , style: TextStyle(color: Colors.white),) ,
              ],
            ) ,
            Column(
              children: [
                Icon(Icons.more_vert ,color: Colors.white,size: 23, ) ,
                Text(' 16:29' , style: TextStyle(color: Colors.white),) ,
              ],
            ) ,
          ],),
        bottom: 10,left: 10,width: deviceSize.width - 20,
      );
  }

   List<Widget> _getTedPosts(Size deviceSize){

     List<Widget> ls =  posts.map((e){
      return Stack(
        children: [
          Card(
            child: Image.network(e.imageURL),),
          _getPositioned(deviceSize),
        ],
      );
    }).toList();

     return ls;
  }



  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _getAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children:
            _getTedPosts(deviceSize) ,

        ),
      )
    );
  }

}