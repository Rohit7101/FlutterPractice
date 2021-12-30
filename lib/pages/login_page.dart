// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child:Column(
        children: [
          SizedBox(height: 40.0),
        Image.asset("assets/images/login.png",
        fit: BoxFit.cover,
      ),

      Text("Welcome",
        style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
            child: Column(children: [
              TextFormField(
                decoration:InputDecoration(
                    labelText: "Enter username",
                    hintText: "Enter username",

                ),
              ),

              TextFormField(

                obscureText: true,
                decoration:InputDecoration(
                    labelText: "Enter Password",
                    hintText: "Enter Password"
                ),
              )
            ],

            ),
          ),

          SizedBox(height: 30),
          ElevatedButton(onPressed: () {
          }, child: Text("Login"),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurpleAccent,
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
              textStyle: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              )
            )
          )
      ],
    )

    );
  }
}
