
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';


    void main(){
       // ignore: prefer_const_constructors
       runApp(MyFirstApp());
    }

    class MyFirstApp extends StatelessWidget {
      const MyFirstApp({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {

        return MaterialApp(
              themeMode: ThemeMode.light,
              debugShowCheckedModeBanner: false,
              theme: MyThemes.getLightTheme(context),
              darkTheme: ThemeData(
                brightness: Brightness.dark
              ),
              initialRoute: MyRoutes.homeRoute,
              routes: {
                MyRoutes.homeRoute:(context)=> HomePage(),
                MyRoutes.loginRoute:(context)=> LoginPage()
              },
        );
      }
    }
    