import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramui/constants/constants.dart';

AppBar HomeAppBar = AppBar(
  title: SvgPicture.asset(
    'assets/images/instagramtxt.svg',
    height: 42,
  ),
  elevation: 0,
  actions: [
    IconButton(
        icon: Icon(
          Icons.add_a_photo_rounded,
        ),
        onPressed: () {}),
    IconButton(icon: Icon(Icons.message_rounded), onPressed: () {}),
    IconButton(icon: Icon(Icons.message_rounded), onPressed: () {})
  ],
);
