import 'package:flutter/material.dart';

class PostModel {
  String username;
  String description;
  String likedby;
  int likes;
  int totalComments;
  bool liked;

  List<AssetImage> images;
  AssetImage userimage;

  String location;

  List<CommentModel> comments;

  PostModel(
      {this.username,
      this.description,
      this.likedby,
      this.likes,
      this.totalComments,
      this.liked,
      this.images,
      this.userimage,
      this.location,
      this.comments});
}

class CommentModel {
  String username;
  AssetImage userimage;

  String comment;
  String date;
  int likes;
  int liked;

  CommentModel({this.userimage,this.username,this.comment,this.date,this.liked,this.likes});
}
