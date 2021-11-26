// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:webfeed/domain/media/media.dart';
// import 'dart:html';
// // import 'package:flutter/material.dart';
// import 'package:webfeed/webfeed.dart';

// List<News> playersFromJson(String str) =>
//     List<News>.from(json.decode(str).map((x) => News.fromRss(x)));

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

// factory RssFeed.parse(String xmlString) {
//   return RssFeed(
//     title: rsFeed[title]
//   );
// }