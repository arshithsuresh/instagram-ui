import 'package:flutter/material.dart';
import 'package:instagramui/theme.dart';
import 'package:instagramui/views/Homepage/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: kAppTheme,
      home: HomePage(),
    );
  }
}

