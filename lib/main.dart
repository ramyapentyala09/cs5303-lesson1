import 'package:flutter/material.dart';
import 'package:lesson1/viewscreen/businesscard_screen.dart';
import 'package:lesson1/viewscreen/buttondemo_screen.dart';
import 'package:lesson1/viewscreen/fontdemo_screen.dart';
import 'package:lesson1/viewscreen/image_screen.dart';
import 'package:lesson1/viewscreen/materialdesign_screen.dart';
import 'package:lesson1/viewscreen/rowcol_screen.dart';
import 'package:lesson1/viewscreen/start_screen.dart';

void main(){
  runApp(Lesson1App());
}

Map<String, int> m = {
  'abc': 20, 
  'xyz': 99,  
  's': 300,
  'absd': 8938493,
  };

class Lesson1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'LobsterTwo',
        primaryColor: Colors.red[800],
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 64.0,
            color: Colors.teal,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            textStyle: TextStyle(fontSize: 26.0),
            elevation: 10.0,
            shadowColor: Colors.red,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.amberAccent,
            elevation: 6.0,
            shadowColor: Colors.yellow,
            textStyle: TextStyle(
              fontSize: 36.0,
              ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.yellow,
          textStyle: TextStyle(
            fontSize: 28.0,
          ),
        ),
        ),
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (BuildContext context) => StartScreen(),
        MaterialDesignScreen.routeName: (context) => MaterialDesignScreen(),
        ImageScreen.routeName: (context) => ImageScreen(),
        ButtonDemoScreen.routeName: (context) => ButtonDemoScreen(),
        FontDemoScreen.routeName: (context) => FontDemoScreen(),
        RowColDemoScreen.routeName: (context) => RowColDemoScreen(),
        BusinessCardScreen.routeName: (context) => BusinessCardScreen(),
      
  },
    );
  }
  }
