import 'package:flutter/material.dart';
import 'package:game_streaming_app/constants/themes.dart';
import 'package:game_streaming_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Streaming',
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: kPrimaryColor,
        ),
        textTheme: const TextTheme(
          headline6: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.w500),
          headline1: TextStyle(
              color: Color(0xff707ba1),
              fontFamily: 'Poppins',
              fontSize: 25,
              fontWeight: FontWeight.w600),
          headline3: TextStyle(
              color: Color(0xff707ba1),
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.w600),
          headline4: TextStyle(
              color: Color(0xff707ba1),
              fontFamily: 'Poppins',
              fontSize: 15,
              fontWeight: FontWeight.w600),
          caption: TextStyle(
            color: Color(0xff707ba1),
            fontFamily: 'Poppins',
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          subtitle1: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 12,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
