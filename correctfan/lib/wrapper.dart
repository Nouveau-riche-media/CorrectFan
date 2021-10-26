import 'package:correctfan/Screens/Error.dart';
import 'package:correctfan/Screens/Onboarding/setFavourites.dart';
// import 'package:correctfan/main/mainPage.dart';
import 'package:correctfan/services/flutterfire.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Onboarding/signUp.dart';
import 'models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final authService = Provider.of<AuthService>(context);

  return StreamBuilder<User?>(
    stream: authService.user,
    builder: (_, AsyncSnapshot<User?> snapshot) {
      if (snapshot.connectionState == ConnectionState.active) {
        final User? user = snapshot.data;
        return user == null ? SignUp() : SetFavourite();
      }
      return Scaffold(
        body: SomethingWentWrong(),
      );
    }
    );
  }
  
}