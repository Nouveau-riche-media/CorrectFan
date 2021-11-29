import 'dart:async';
import 'dart:io';

// import 'package:correctfan/Screens/news.dart';
import 'package:correctfan/constants/api.dart';
import 'package:correctfan/models/clubs.dart';
import 'package:correctfan/models/matches.dart';
import 'package:correctfan/models/newsModel.dart';

import 'package:correctfan/models/players.dart';
import 'package:http/http.dart' as http;
import 'package:retry/retry.dart';
import 'package:webfeed/webfeed.dart' as rss;

class RemoteServices {
  static var client = http.Client();
  static var rssClient = http.Client();

// Fetch Club List from API
  static Future<List<Clubs>> fetchClubs() async {
    final response = await client.get(Uri.parse(
        'https://api.sportsdata.io/v3/soccer/scores/json/Teams?key=7788832784ab47388f3326603d86427f'));

    if (response.statusCode == 200) {
      return clubsFromJson(response.body);
    } else {
      throw Exception('Failed to display');
    }
  }

// Fetch Live Scores from API
  static Future<List<Fixtures>> fetchTodaysMatches() async {
    final response = await retry(
        () => client.get(Uri.parse(todayUri)).timeout(Duration(seconds: 5)),
        retryIf: (e) => e is SocketException || e is TimeoutException);
    
    return fixturesFromJson(response.body);
  }

// Fetch YesterdaysMatches
  static Future<List<Fixtures>> fetchYesterdaysMatches() async {
    final response = await retry(
        () => client.get(Uri.parse(yesterdayUri)).timeout(Duration(seconds: 5)),

        retryIf: (e) => e is SocketException || e is TimeoutException);
    if (response.statusCode != 200){
      return fixturesFromJson('Error ${response.statusCode}: \nCannot Fetch Feed');
    } else {
      return fixturesFromJson(response.body);
    }
  }

  static Future<List<Fixtures>> fetchTomorrowsMatches() async {
    final response = await retry(
        () => client.get(Uri.parse(tomorrowUri)).timeout(Duration(seconds: 5)),
        retryIf: (e) => e is SocketException || e is TimeoutException);
    // if (response.statusCode == 200){
    return fixturesFromJson(response.body);
  }

  static Future<List<Fixtures>> fetchNextMatches() async {
    final response = await retry(
        () => client.get(Uri.parse(nextUri)).timeout(Duration(seconds: 5)),

        retryIf: (e) => e is SocketException || e is TimeoutException );
    // if (response.statusCode == 200){
    return fixturesFromJson(response.body);
  }

  static Future<List<Players>> fetchPlayers() async {
    final response = await retry(
        () => client.get(Uri.parse(playerURI)).timeout(Duration(seconds: 5)),
        retryIf: (e) => e is SocketException || e is TimeoutException);
    // if (response.statusCode == 200){
    return playersFromJson(response.body);
  }

  // static Future<List<NewsModel>> fetchNews() async {
  //   final response = await retry(() => client.get(Uri.parse(newsFeed)).timeout(Duration(seconds: 5)),
  //   retryIf: (e) => e is 
  //   );
  // }
}
