import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future signIn() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: 'aechealgr8@gmail.com',
        password: 'correctfan'
        );
      // UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      //   email: "barry.allen@example.com",
      //   password: "SuperSecretPassword!"
      // );
    }catch (e) {
    //   if (e.code == 'user-not-found') {
    //     print('No user found for that email.');
    //   } else if (e.code == 'wrong-password') {
    //     print('Wrong password provided for that user.');
    // }
}
}
}