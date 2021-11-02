import 'package:correctfan/constants/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

import 'package:get/get.dart';

class Splash extends StatefulWidget {
  // const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  
  changeScreen(BuildContext context){
  return Timer(Duration(milliseconds: 2500), () async {
    await Get.toNamed('on1');
  });
}



  @override
  Widget build(BuildContext context) {

    Color backgroundColor = secondary;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            SvgPicture.asset('assets/images/cflettermark.svg'),
          ],
        ),),
    );
  }
}