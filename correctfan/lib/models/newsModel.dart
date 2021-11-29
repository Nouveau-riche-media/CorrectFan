import 'package:webfeed/domain/media/media.dart';

// import 'dart:html';
// // import 'package:flutter/material.dart';
// import 'package:webfeed/webfeed.dart';

// List<NewsModel> newsFromJson(String str) =>
//     List<NewsModel>.from(json.decode(str).map((x)));

// String playersToJson(List<News> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
  

class NewsModel {
  NewsModel({
    
    required this.title,
    this.image,
    required this.body,
    this.author, 
  });

  String? title;
  String? body;
  String? author;
  Media? image;
}
