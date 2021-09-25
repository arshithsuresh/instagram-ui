import 'package:flutter/material.dart';

Widget UserStory({profilePicture}) => Container(
      child: Column(
        children: [
          Container(
            width: 70,
            height: 80,
            constraints: BoxConstraints(maxHeight: 70, maxWidth: 70),
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.only(left: 8, right: 8),
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
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage('assets/profile/3.jpg'),
                      fit: BoxFit.cover,
                    )),
                width: 70,
                height: 70,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22))),
          ),
          Container(
              margin: EdgeInsets.only(top:4),
              width: 65,
              child: Text(
                "Usernamed",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12,)
              ))
        ],
      ),
    );
