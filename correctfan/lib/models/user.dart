class User {
  final String uid;
  final String email;
  var username;
  // List<String> favouriteTeams;
  

  User({
      required this.uid,
      required this.email,
      this.username,
    });
}