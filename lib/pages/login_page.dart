// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  var name = "";
  var changeButton = false;
  final formGlobalKey = GlobalKey<FormState>();


  void moveToHomePage(BuildContext context) async {
    if (formGlobalKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: formGlobalKey,
            child: Column(
              children: [
                SizedBox(height: 40.0),
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter username",
                          hintText: "Enter username",
                        ),
                        validator: (value) {
                          if(value!.isEmpty){
                            return " Username cannot be empty";
                          }
                          return null;
                        },




                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Enter Password",
                            hintText: "Enter Password"),

                        validator: (String? value) {
                          if(value!.isEmpty){
                            return "Password cannot be empty";
                          }
                          else if(value.length <6){
                            return "Password length should be atleast 6";

                          }
                          return null;
                        },
                      )

                    ],
                  ),
                ),
                SizedBox(height: 30),
                Material(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  child: InkWell(
                    onTap: () => moveToHomePage(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 16,
                                  letterSpacing: 1),
                            ),
                      /*   decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          // shape: changeButton?BoxShape.circle:BoxShape.rectangle
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8)),*/
                    ),
                  ),
                )
                /*      ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                        textStyle: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                        )))*/
              ],
            ),
          ),
        ));
  }
}
