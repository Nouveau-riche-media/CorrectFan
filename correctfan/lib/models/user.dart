import 'package:correctfan/models/clubs.dart';

class User {
  String? uid;
  String? email;
  String? username;
  List<Clubs>? favoriteTeams;

  User({
      required this.uid,
      required this.email,
      this.username,
      this.favoriteTeams
    });

}