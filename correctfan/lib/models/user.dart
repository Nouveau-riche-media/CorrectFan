import 'package:correctfan/models/clubs.dart';

class User {
  String? uid;
  String? email;
  String? username;
  String? phoneNumber;
  String? gender;
  String? address;
  String? password;
  List<Clubs>? favoriteTeams;
  String? wallet;
  int? points;

  User({
      required this.uid,
      required this.email,
      this.username,
      this.favoriteTeams,
      this.wallet,
      this.points
    });

}