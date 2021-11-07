import 'package:correctfan/constants/api.dart';
import 'package:correctfan/models/clubs.dart';
import 'package:correctfan/models/matches.dart';
import 'package:correctfan/models/players.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RemoteServices {

  static var client = http.Client();
  

// Fetch Club List from API
static Future<List<Clubs>> fetchClubs() async {
  final response = await client.get(Uri.parse('https://api.sportsdata.io/v3/soccer/scores/json/Teams?key=7788832784ab47388f3326603d86427f'));

  if (response.statusCode == 200) {
    return clubsFromJson(response.body);
  } else {
    throw Exception('Failed to display');
  }
}

// Fetch Live Scores from API
static Future<List<Fixtures>> fetchTodaysMatches() async {
  try {
    final response = await client.get(Uri.parse(todayUri));
      if (response.statusCode == 200){
      return fixturesFromJson(response.body);
      }  
    else {
      throw Exception('Failed to Load Feed');
    }}
  catch (e) {
    throw Exception('Failed to Load Feed');
    }
  } 


// Fetch YesterdaysMatches
  static Future<List<Fixtures>> fetchYesterdaysMatches() async {
    try {
      final response = await client.get(Uri.parse(yesterdayUri));

      if (response.statusCode == 200) {
        return fixturesFromJson(response.body);
      } else{
        throw Exception('Failed to Load Feed');
      }
      } catch (e) {
        throw Exception('Failed to Load Feed');
    }
  }

  static Future<List<Fixtures>> fetchTomorrowsMatches() async {
    try {
    final response = await client.get(Uri.parse(tomorrowUri));

    if (response.statusCode == 200) {
      return fixturesFromJson(response.body);
    } else {
      throw Exception('Failed to Load Feed');
    } } catch (e) {
      throw Exception('Failed to Load Feed');
    }
  }

  static Future<List<Fixtures>> fetchNextMatches() async {
    try {
      final response = await client.get(Uri.parse(nextUri));

      if (response.statusCode == 200) {
        return fixturesFromJson(response.body);
      } else {
        throw Exception('Failed to Load Feed');
      } 

    } 
    catch (e) {
      throw Exception('Failed to Load Feed');
    }
  }

  static Future<List<Players>> fetchPlayers() async {
    try{
    final response = await client.get(Uri.parse(playerURI));

    if (response.statusCode == 200) {
      return playersFromJson(response.body);
    } else {
      throw Exception('Failed to Load Feed');
    }
    } catch (e){
      throw Exception('Failed to Load Feed');
    }
  }
}
