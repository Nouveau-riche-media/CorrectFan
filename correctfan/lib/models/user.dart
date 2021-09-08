import 'package:correctfan/models/clubs.dart';

class CorrectFanUser {
  final String uid;
  final String email;
  var username;
  List<Clubs> favoriteTeams;

  CorrectFanUser({
      this.uid,
      this.email,
      this.username,
      this.favoriteTeams
    });

}