import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTheme{
  static Color gold=Color.fromRGBO(183, 147, 95, 1.0);
  static Color black=Color.fromRGBO(36, 36, 36, 1.0);
  static Color white=Colors.white;
  static Color primaryDark=Color.fromRGBO(20, 26, 46, 1.0);
  static Color semiGold=Color.fromRGBO(183, 147, 95, 0.8117647058823529);
  static final ThemeData lightMode = ThemeData(
    primaryColor: gold,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: black,
      ),
    ),
    textTheme: TextTheme(
      headline4: TextStyle(
        color: black,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      subtitle2: TextStyle(
          color: black,
          fontSize: 25,
          fontWeight: FontWeight.w600
      ),
      bodyText1: TextStyle(
          color: black,
          fontSize: 25,
          fontWeight: FontWeight.w600
      ),
      subtitle1: TextStyle(
          color: black,
          fontSize: 25,
          fontWeight: FontWeight.bold

      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: gold,
      selectedItemColor: black,
      unselectedItemColor:white,
    ),
  );
  static final ThemeData darkMode = ThemeData(

    primaryColor: primaryDark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: white,
      ),
    ),
    textTheme: TextTheme(
      headline4: TextStyle(
          color: white,
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
      subtitle2: TextStyle(
          color: white,
          fontSize: 25,
          fontWeight: FontWeight.w600
      ),
      bodyText1: TextStyle(
          color: white,
          fontSize: 25,
          fontWeight: FontWeight.w600
      ),
      subtitle1: TextStyle(
          color: white,
          fontSize: 25,
          fontWeight: FontWeight.bold

      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.red,
      selectedItemColor: gold,
      unselectedItemColor:white,
    ),
  );
}
