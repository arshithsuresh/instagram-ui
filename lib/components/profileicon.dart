import 'package:flutter/material.dart';

Widget ProfileIcon(
        {double radius: 42,
        image: const AssetImage('assets/profile/1.jpg'),
        double rightMargin: 16}) =>
    Container(
      padding: EdgeInsets.zero,      
      alignment: Alignment.bottomCenter,
      width: radius,
      height: radius,        
      margin: EdgeInsets.only(right: rightMargin),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),        
        child: Image(
          image: image,
          fit: BoxFit.fill,
        ),
      ),
    );
