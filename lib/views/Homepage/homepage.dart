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
    ThemeData appTheme = Theme.of(context);

    return Scaffold(
      appBar: HomeAppBar,
      body: Container(       
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                margin: EdgeInsets.only(bottom: 16, top: 8),
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
              ),
              //Post Card
              Container(
                margin: EdgeInsets.only(top: 8),                
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left:12),
                      height: 56,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Row(
                        children: [
                          Container(
                            width: 42,
                            height: 42,
                            margin: EdgeInsets.only(right: 16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(42),
                              child: Image(
                                image: AssetImage('assets/profile/1.JPG'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Username",
                                  style: appTheme.textTheme.headline4,
                                  children: [TextSpan(text: "\n")]),
                              TextSpan(
                                text: "Location pin",
                                style: appTheme.textTheme.headline5,
                              ),
                            ]),
                          )
                        ],
                      ),
                      IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
                      ],) 
                    ),
                    Image(image: AssetImage('assets/profile/2.JPG')),
                    Container(height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(child: Row(children: [
                          IconButton(icon: Icon(Icons.favorite_border),onPressed: (){},constraints: BoxConstraints(), splashRadius: 10,),
                          IconButton(icon: Icon(Icons.comment_outlined) ,onPressed: (){},constraints: BoxConstraints(), splashRadius: 10,),
                          IconButton(icon: Icon(Icons.send),onPressed: (){},constraints: BoxConstraints(), splashRadius: 10,)
                        ],),),
                        IconButton(icon: Icon(Icons.save), onPressed: (){},constraints: BoxConstraints(), splashRadius: 10,)
                      ],
                      
                    ),)
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
