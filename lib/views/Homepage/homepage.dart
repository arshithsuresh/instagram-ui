import 'package:flutter/material.dart';
import 'package:instagramui/components/appBar.dart';
import 'package:instagramui/views/Homepage/components/userstory.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar,
      body: Container(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    UserStory(),
                    UserStory(),
                    UserStory(),
                    UserStory(),
                    UserStory(),
                    UserStory(),
                    UserStory()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
