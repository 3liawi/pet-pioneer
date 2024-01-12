import 'package:flutter/material.dart';

class AppTheme {
  // Define the color palette
  static const Color primaryColor = Color(0xFF00BFA5);
  static const Color secondaryColor = Color(0xFFFFC107);
  static const Color accentColor = Color(0xFFFF5252);
  static const Color backgroundColor = Color(0xFFE6E8EB);
  static const Color cardColor = Color(0xFFF6F6F6);
  static const Color bottomNavIconColor = Color(0xFF757575);
  static const Color bottomNavSelectedIconColor = Color(0xFF00BFA5);

  // Define the text styles
  static const TextStyle greetingTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle questionTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 30.0,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle cardTitleTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle cardContentTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle eventButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );

  // Define the app bar theme
  static AppBarTheme appBarTheme = const AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
  );

  // Define the bottom navigation bar theme
  static BottomNavigationBarThemeData bottomNavBarTheme =
      const BottomNavigationBarThemeData(
    selectedItemColor: bottomNavSelectedIconColor,
    unselectedItemColor: bottomNavIconColor,
    backgroundColor: backgroundColor,
    type: BottomNavigationBarType.fixed,
  );

  // Define the overall theme for the app
  static ThemeData defineTheme() {
    return ThemeData(
      primaryColor: primaryColor,
      hintColor: accentColor,
      scaffoldBackgroundColor: backgroundColor,
      cardColor: cardColor,
      appBarTheme: appBarTheme,
      bottomNavigationBarTheme: bottomNavBarTheme,
      fontFamily: 'Manrope',
      textTheme: const TextTheme(
        displayLarge: greetingTextStyle,
        displayMedium: questionTextStyle,
        titleMedium: cardTitleTextStyle,
        bodyMedium: cardContentTextStyle,
        labelLarge: eventButtonTextStyle,
      ),
    );
  }
}
