

import 'package:correctfan/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
// import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  User? _userFromFireBase(auth.User? user){
    if (user == null){
      return null;
    }
    return User(uid: user.uid, email: user.email.toString());
  }

  Stream<User?>? get user {
    return _firebaseAuth.authStateChanges( ).map(_userFromFireBase);
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email, password: password);

      return _userFromFireBase(credential.user);
  }

  Future<User?> createUserWithEmailAndPassword(
      String email, String password) async {
        final credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email, password: password);

      return _userFromFireBase(credential.user);
      }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}