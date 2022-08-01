
  import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

  ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey,
    primarySwatch: Colors.green,
    appBarTheme: AppBarTheme(
      titleSpacing: 20,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.grey,
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: Colors.grey,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        height: 1.3,
      ),
    ),
  );

  ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      titleSpacing: 20,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.blueAccent,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: Colors.blue,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),

    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.black,
        height: 1.3,
      ),
    ),
  );
