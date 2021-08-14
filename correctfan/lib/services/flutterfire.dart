import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth firebase = FirebaseAuth.instance;

Future<bool> signIn(String email, String password) async{
  try {
    await firebase.signInWithEmailAndPassword(email: email, password: password);
    return true;
  } catch (e) {
    print(e.toString());
    return false;
  }
}


Future<bool> signUp(String email, String password,) async{
  try {
    await firebase.createUserWithEmailAndPassword(email: email, password: password);
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
    return false;
} catch (e) {
  print(e.toString());
  return false;
}
}