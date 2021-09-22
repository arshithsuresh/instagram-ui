import 'package:flutter/material.dart';

Widget UserStory({profilePicture}) => Container(
      width: 60,
      height: 60,
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.only(left:8,right:8),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blueAccent,
              Colors.purpleAccent,
              Colors.redAccent,
            ],
          ),
          borderRadius: BorderRadius.circular(24)),
      child: Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(24))),
    );
