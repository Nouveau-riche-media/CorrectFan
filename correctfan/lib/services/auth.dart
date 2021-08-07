// import 'package:correctfan/models/user.dart';
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';

// class AuthService {

//   FirebaseAuth _auth = FirebaseAuth.instance;

//   User? _fromFirebaseUser(FirebaseUser user){
//     // ignore: unnecessary_null_comparison
//     return user != null ? User(uid: user.uid) : null;
//   } 

//   Stream<User> get user {
//     return _auth.onAuthStateChanged
//     .map(_fromFirebaseUser);
//   }

//   Future signIn() async {
//     try {
//       await _auth.signInWithEmailAndPassword(
//         email: 'aechealgr8@gmail.com',
//         password: 'correctfan'
//         );
//       // UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//       //   email: "barry.allen@example.com",
//       //   password: "SuperSecretPassword!"
//       // );
//     }catch (e) {
//     //   if (e.code == 'user-not-found') {
//     //     print('No user found for that email.');
//     //   } else if (e.code == 'wrong-password') {
//     //     print('Wrong password provided for that user.');
//     // }
// }
// }

// Future signUp(String email, String password) async {
//   try {
//     AuthResult result = _auth.createUserWithEmailAndPassword(
//       email: email,
//       password: password
//     );
//     FirebaseUser user = result.user;
//     return _fromFirebaseUser(user);
//   }catch (e){
//     return null;
//   }
// }

// Future signOut() async {
//   try {
//     await _auth.signOut();
//   }
//   catch (e){
//     return null;
//   }
// }
// }