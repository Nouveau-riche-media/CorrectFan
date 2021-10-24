// import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Match {
  int id;
  int homeScore;
  int awayScore;
  String homeTeam;
  String awayTeam;
  

  Match({
    required this.id,
    required this.awayTeam,
    required this.homeTeam,
    required this.homeScore,
    required this.awayScore
  });
  
  // Future<http.Response> match() {
  //   return http.get(Uri.parse('https://api.sportsdata.io/v3/soccer/scores/json/GamesByDate/%7Bdate%7D?key=7788832784ab47388f3326603d86427f'));
  // }

  // factory Match.fromJson(){
  //   return Match(
  //     id: json[],
  //     awayTeam: json[],
  //     homeTeam: json[],
  //     homeScore: json[],
  //     awayScore: json[]);
  // }
  
}