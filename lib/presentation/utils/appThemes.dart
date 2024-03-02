import 'package:flutter/material.dart';

class AppThemes {
  /// NAMED CONSTRUCTOR
  AppThemes._();

  // TITLE TEXT THEME
  static const TextStyle titleTextFontTheme = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.redAccent,
  );

  // SUBTITLE TEXT THEME
  static const TextStyle subtitleTextFontTheme = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );

  // APP BAR THEME
  static ThemeData getAppTheme() {
    return ThemeData(
      primaryColor: Colors.redAccent,
      hintColor: Colors.blueAccent,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.redAccent,
        iconTheme: IconThemeData(
          color: Colors.white, // Updated icon color to white
        ),
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyText1: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
    );
  }
}
