import 'package:flutter/material.dart';
import 'package:instagramui/components/appBar.dart';
import 'package:instagramui/components/postcard.dart';
import 'package:instagramui/components/profileicon.dart';
import 'package:instagramui/views/Homepage/components/userstory.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);

    return Scaffold(
      appBar: HomeAppBar(),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home_rounded,
                  size: 28,
                ),
                onPressed: () {},
                constraints: BoxConstraints(),
                padding: EdgeInsets.zero,
              ),
              IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 28,
                  ),
                  onPressed: () {},
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.zero),
              IconButton(
                  icon: Icon(
                    Icons.video_collection,
                    size: 28,
                  ),
                  onPressed: () {},
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.zero),
              IconButton(
                  icon: Icon(
                    Icons.favorite_outline,
                    size: 28,
                  ),
                  onPressed: () {},
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.zero),
              ProfileIcon(radius: 30, rightMargin: 0)
            ]),
      ),      
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 90,
                margin: EdgeInsets.only(bottom: 4, top: 8),
                child: ListView(
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
              ),
              PostCard(),
              PostCard(),
              PostCard()
            ],
          ),
        ),
      ),
    );
  }
}
