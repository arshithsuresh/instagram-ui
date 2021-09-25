import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:instagramui/components/profileicon.dart';

class PostCard extends StatefulWidget {
  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool liked = false;
  bool viewFullPost = false;
  CarouselController _carouselController = new CarouselController();

  void LikePost() {
    setState(() {
      liked = true;
    });
  }

  void UnLikePost() {
    setState(() {
      liked = false;
    });
  }

  List<String> images = [
    'assets/posts/1.jpg',
    'assets/posts/2.jpg',
    'assets/posts/3.jpg'
  ];
  int _selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(left: 12),
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ProfileIcon(),
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
                  IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
                ],
              )),
          Container(
              constraints: BoxConstraints(maxHeight: 500),
              child: CarouselSlider.builder(
                itemCount: images.length,
                carouselController: _carouselController,
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        _selectedImage = index;
                      });
                    },
                    initialPage: 0,
                    aspectRatio: 1,
                    viewportFraction: 1,
                    enableInfiniteScroll: false),
                itemBuilder: (context, index, pvindex) {
                  return Image(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                  );
                },
              )),
          Container(
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      IconButton(
                        
                        icon: Icon(
                            liked ? Icons.favorite : Icons.favorite_border,
                            color: liked? Colors.red:Colors.black,),
                        onPressed: () {
                          if (liked)
                            UnLikePost();
                          else
                            LikePost();
                        },
                        constraints: BoxConstraints(),
                        splashRadius: 10,
                      ),
                      IconButton(
                        icon: Icon(Icons.comment_outlined),
                        onPressed: () {},
                        constraints: BoxConstraints(),
                        splashRadius: 10,
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {},
                        constraints: BoxConstraints(),
                        splashRadius: 10,
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      height: 10,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 6,
                              height: 6,
                              margin: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: index == _selectedImage
                                    ? Colors.black
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(6),
                              ),
                            );
                          }),
                    )),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.save),
                      onPressed: () {},
                      constraints: BoxConstraints(),
                      splashRadius: 10,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
              height: 28,
              padding: EdgeInsets.only(left: 12),
              width: double.infinity,
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          text: "Liked by ",
                          children: [
                        TextSpan(
                            text: "Username",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: " and "),
                        TextSpan(
                            style: TextStyle(fontWeight: FontWeight.bold),
                            text: "1703",
                            children: [TextSpan(text: " others")])
                      ]))
                ],
              )),
          // Post Description
          Container(
            padding: EdgeInsets.only(left: 12, right: 12),
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  viewFullPost = !viewFullPost;
                });
              },
              child: RichText(
                  maxLines: viewFullPost ? 10 : 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text: "Username",
                      style: appTheme.textTheme.headline4,
                      children: [
                        TextSpan(children: [
                          TextSpan(text: "\t"),
                          TextSpan(
                              text:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book")
                        ], style: appTheme.textTheme.bodyText1)
                      ])),
            ),
          ),
          // Post Comments
          Container(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero, minimumSize: Size(12, 12)),
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          "View all ${12} comments",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.grey),
                          maxLines: 1,
                        ),
                      )),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                              text: "Username",
                              children: [
                                TextSpan(
                                    text: "\t",
                                    children: [
                                      TextSpan(
                                          text:
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                                    ],
                                    style: appTheme.textTheme.bodyText1)
                              ],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ),
                      Container(
                        width: 16,
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            size: 16,
                          ),
                          splashRadius: 10,
                          onPressed: () {},
                          constraints: BoxConstraints(),
                          padding: EdgeInsets.zero,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12, bottom: 8),
                    height: 60,
                    child: Row(
                      children: [
                        ProfileIcon(),
                        Expanded(
                            child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          maxLines: 1,
                          expands: false,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 4, bottom: 0, left: 12),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: "Add a comment..."),
                        ))
                      ],
                    ),
                  ),
                  Text(
                    "${23} minutes ago.",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
