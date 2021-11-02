import 'package:correctfan/models/clubs.dart';
import 'package:correctfan/models/players.dart';

class User {
  String? uid;
  String? email;
  String? username;
  String? phoneNumber;
  String? gender;
  String? address;
  String? password;
  List<Clubs>? favoriteTeams;
  // int? walletId;
  String? wallet;
  int? points;
  List<Players>? myTeam;

  User({
      required this.uid,
      required this.email,
      this.username,
      // this.walletId,
      this.favoriteTeams,
      this.wallet,
      this.points,
      this.myTeam,
    });

}