// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes{

  static ThemeData getLightTheme(BuildContext context) {
    return ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts
            .lato()
            .fontFamily,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
            )

        )
    );
  }


}