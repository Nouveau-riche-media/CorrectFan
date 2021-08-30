import 'package:correctfan/Screens/Onboarding/signUp.dart';
import 'package:correctfan/constants/firebase.dart';
import 'package:correctfan/main/mainPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
// import 'package:firebase_core/firebase_core.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> firebaseUser;
  RxBool loggedIn = false.obs;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user){
    if(user == null){
      Get.offAll(() => SignUp());
    }
    else{
      Get.offAll(() => MainPage());
    }
  }

  void signUp() async {
    try {
      await auth.createUserWithEmailAndPassword(email: email.text.trim(), password: password.text.trim());
    } catch (e) {
      Get.snackbar('Sign Up failed', 'Please try again');
    }
  }

  void signIn() async {
    try {
      await auth.signInWithEmailAndPassword(email: email.text.trim(), password: password.text.trim());
    } catch (e) {
      Get.snackbar('Sign Up failed', 'Please try again');
    }
  }
  void signOut() async {
    await auth.signOut();
  }
  }