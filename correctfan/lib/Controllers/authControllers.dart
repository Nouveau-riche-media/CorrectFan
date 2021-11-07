import 'dart:io';

import 'package:correctfan/Controllers/playerController.dart';
import 'package:correctfan/Screens/Competetions/Speed50_leaderBoard.dart';
import 'package:correctfan/Screens/Onboarding/onboarding1.dart';
import 'package:correctfan/Screens/Onboarding/signUp.dart';
import 'package:correctfan/Screens/Onboarding/splash.dart';
import 'package:correctfan/constants/firebase.dart';
import 'package:correctfan/constants/ui.dart';
// import 'package:correctfan/helpers/showLoading.dart';
import 'package:correctfan/main/mainPage.dart';
// import 'package:correctfan/models/user.dart' as cf;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'matchesController.dart';
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
      Get.offAll(() => Onboarding1());
    }
    else {
      Get.put(TodaysMatchesController());
      Get.put(YesterdayMatchesController());
      Get.put(NextMatchesController());
      Get.put(TomorrowMatchesController());
      Get.put(PlayerController());
      Get.offAll(() => MainPage());
    }
  }

  void signUp() async {
    // showLoading();
    try {
      await auth.createUserWithEmailAndPassword(email: email.text.trim(), password: password.text.trim());

      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty){
        Get.put(TodaysMatchesController());
        Get.put(YesterdayMatchesController());
        Get.put(NextMatchesController());
        Get.put(TomorrowMatchesController());
        Get.put(PlayerController());
      }
      // _clearControllers();
    } on SocketException catch (_){
      Get.snackbar(
        'you\'re not connected to the Internet', 'Please Connect and try again',
          barBlur: 0,
          backgroundColor: lightGrey,
          snackPosition: SnackPosition.TOP);
    } catch (e) {
      Get.snackbar('Sign Up failed', 'Please try again\n\n$e',
      barBlur: 0,
      backgroundColor: lightGrey,
      snackPosition: SnackPosition.TOP
      );
    }
    // dismissLoadingWidget();
    _clearControllers();
  }

  void signIn() async {
    // showLoading();
    try {
      await auth.signInWithEmailAndPassword(email: email.text.trim(), password: password.text.trim());
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty){
        Get.put(TodaysMatchesController());
        Get.put(YesterdayMatchesController());
        Get.put(NextMatchesController());
        Get.put(TomorrowMatchesController());
        Get.put(PlayerController());
      }
      // _clearControllers();
    } on SocketException catch (_){
      Get.snackbar(
        'you\'re not connected to the Internet', 'Please Connect and try again',
          barBlur: 0,
          backgroundColor: lightGrey,
          snackPosition: SnackPosition.TOP);
    }
    catch (e) {
      Get.snackbar(
        'Sign In failed', 'Please try again',
        barBlur: 0,
        backgroundColor: lightGrey,
        snackPosition: SnackPosition.TOP
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