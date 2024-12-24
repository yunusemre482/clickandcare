import 'package:flutter/material.dart';

class CustomThemeService {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: const Color(0xffe6195d),
      brightness: Brightness.light,
      dividerColor: Colors.white54,
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        outlineBorder: BorderSide(
          color: Colors.black,
        ),
        focusColor: Colors.blueGrey,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      dividerColor: Colors.black12,
    );
  }
}
