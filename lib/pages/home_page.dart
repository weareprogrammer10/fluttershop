import 'package:flutter/material.dart';
import '/widgets/drawer.dart';


class HomePage extends StatelessWidget {
  final int days = 21;
  final String name = "We are Programmer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text('  "$name  '''),
        ),
      ),
      drawer: MyDrawer(),
    );
  } 
}
