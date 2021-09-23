import 'package:flutter/material.dart';
import 'package:instagramui/constants/colors.dart';

ThemeData kAppTheme = ThemeData(
  backgroundColor: kBackgroundColor,
  primaryColor: kPrimaryColor,
  accentColor: kAccentColor,
  highlightColor: kHighlightColor,
  buttonTheme: ButtonThemeData(),
  scaffoldBackgroundColor: kBackgroundColor,  
  iconTheme: IconThemeData(color: Colors.black),  
  textTheme: TextTheme(
    headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black,), //Usernames
    headline5: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
    bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black)
  )
);