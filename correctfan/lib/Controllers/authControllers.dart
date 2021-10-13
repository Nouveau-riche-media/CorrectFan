import 'package:correctfan/Screens/Onboarding/signUp.dart';
import 'package:correctfan/constants/firebase.dart';
// import 'package:correctfan/helpers/showLoading.dart';
import 'package:correctfan/main/mainPage.dart';
import 'package:correctfan/models/user.dart' as cf;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:firebase_core/firebase_core.dart';

class AuthController extends GetxController {

  static AuthController instance = Get.find();
  late Rx<User?> firebaseUser;
  RxBool loggedIn = false.obs;
  // CorctFanUser couser = new CorrectFanUser();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

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
    else {
      Get.offAll(() => MainPage());
    }
  }

  void signUp() async {
    // showLoading();
    try {
      await auth.createUserWithEmailAndPassword(email: email.text.trim(), password: password.text.trim());
      // _clearControllers();
    } catch (e) {
      Get.snackbar('Sign Up failed', 'Please try again',
      barBlur: 0,
      backgroundColor: Colors.black87,
      snackPosition: SnackPosition.BOTTOM
      );
    }
    // dismissLoadingWidget();
    _clearControllers();
  }

  void signIn() async {
    // showLoading();
    try {
      await auth.signInWithEmailAndPassword(email: email.text.trim(), password: password.text.trim());
      // _clearControllers();
    } catch (e) {
      Get.snackbar(
        'Sign In failed', 'Please try again',
        barBlur: 0,
        backgroundColor: Colors.black87,
        snackPosition: SnackPosition.BOTTOM
        );
    }
    // dismissLoadingWidget();
    _clearControllers();
  } 
  void signOut() async {
    await auth.signOut();
  }

  _clearControllers (){
    email.clear();
    password.clear();
  }
  }