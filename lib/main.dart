
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';


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
                primarySwatch:Colors.green
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark
              ),
            //  initialRoute: "/home",
              routes: {
                "/":(context)=> HomePage(),
                "/login":(context)=> LoginPage()
              },
        );
      }
    }
    