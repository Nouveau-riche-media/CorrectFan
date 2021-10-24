import 'dart:convert';
import 'package:http/http.dart' as http;

class PlayerModel {
  String? position;
  int? minutesPlayed;
  int? goals;
  int? assists;
  int? matchesPlayed;
  int? saves;

  final String name;
  final String club;

  PlayerModel({
    required this.name,
    required this.club,
    this.assists,
    this.minutesPlayed,
    this.goals,
    this.matchesPlayed,
    this.saves,
  }); 

  Future<http.Response> fetchPlayer() {
    return http.get(Uri.parse('uri'));
  }
}