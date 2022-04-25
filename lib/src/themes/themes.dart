import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static TextTheme lightTextTheme = const TextTheme(
    headline1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    button: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w500,
    ),
  );

  static TextTheme darkTextTheme = const TextTheme(
    headline1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    button: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w500,
    ),
  );

  static AppBarTheme _appBarTheme() {
    return const AppBarTheme(
      color: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      toolbarHeight: 45,
      elevation: 2,
      centerTitle: true,
    );
  }

  static ThemeData light() {
    return ThemeData(
      primaryColor: Colors.white,
      secondaryHeaderColor: const Color.fromRGBO(241, 112, 155, 1),
      errorColor: const Color.fromRGBO(178, 32, 32, 1.0),
      appBarTheme: _appBarTheme(),
      textTheme: lightTextTheme,
      disabledColor: const Color.fromRGBO(203, 203, 203, 1.0),
highlightColor: const Color.fromRGBO(0, 0, 0, 1.0),
      scaffoldBackgroundColor: Colors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
          onPrimary: Colors.grey,
          elevation: 0,
          shadowColor: Colors.transparent,
          minimumSize: const Size(0, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }

  static ThemeData dark() {
    return light().copyWith(
      primaryColor: Colors.white,
      textTheme: darkTextTheme,
      scaffoldBackgroundColor: const Color.fromRGBO(40, 40, 40, 1.0),
      highlightColor: const Color.fromRGBO(238, 238, 238, 1.0),

    );
  }
}
