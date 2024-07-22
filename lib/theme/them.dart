import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.blue,
      hintColor: Colors.orange,
      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(fontSize: 14, color: Colors.black54),
      ),
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.blue,
      ),
    );
  }
}
