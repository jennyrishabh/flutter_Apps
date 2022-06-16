import 'package:flutter/material.dart';
import 'package:shopping_buyer_app/modules/widgets/view_product.dart';

import 'package:shopping_buyer_app/modules/widgets/searchProduct.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //appBar: AppBar(),
      
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.only(top: 10),
              // child: ViewProduct(),
              child: searchProduct(),
              // child:Text("Your widget")
              )
          ),
    );
  }
}
