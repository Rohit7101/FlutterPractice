// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  Material(
      child: Center(
          child: Text("Login page",style: TextStyle(
            color: Colors.green,
            fontWeight:FontWeight.bold
          ),
          )
      ),
    );
  }
}
