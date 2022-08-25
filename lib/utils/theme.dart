

import 'package:flutter/material.dart';

Color backgroundColor = Color(0xffF2F2F7);
Color appBarColor = Colors.white;
Color primaryColor = Colors.blue.shade700;
Color cardColor = Colors.white;

class AppTheme{
  static  ThemeData appTheme =   ThemeData(

    scaffoldBackgroundColor: backgroundColor,
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(color: appBarColor),
    cardColor: cardColor,
  );
}