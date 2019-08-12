import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() => runApp(JideUI());

class JideUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.white,
          elevation: 0,
        ),
        //backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MainScreen(),
    );
  }
}
