import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Codepur";
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Colors.red,
      ),
      body:Center(
        child:Container(
        child: Text("Welcome to $days days of flutter in $name"),
      ),
      ),
      drawer: Drawer(),
    );
  }
}
