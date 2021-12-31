
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


    void main(){
       runApp(MyFirstApp());
    }

    class MyFirstApp extends StatelessWidget {
      const MyFirstApp({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {

        return MaterialApp(
              themeMode: ThemeMode.light,
              theme: ThemeData(
                primarySwatch:Colors.green,
                fontFamily: GoogleFonts.lato().fontFamily
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark
              ),
              initialRoute: MyRoutes.loginRoute,
              routes: {
                MyRoutes.homeRoute:(context)=> HomePage(),
                MyRoutes.loginRoute:(context)=> LoginPage()
              },
        );
      }
    }
    