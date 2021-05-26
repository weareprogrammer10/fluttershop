import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 21;
  final String name = "We are Programmer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Container(
          child: Text('  "$name  '''),
        ),
      ),
      drawer: Drawer(),
    );
  } 
}
