import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  changeScreen(BuildContext context){
  return Timer(Duration(milliseconds: 2500), () async {
    await Navigator.pushNamed(context, 'on1');
  });
}

  @override
  // ignore: must_call_super
  void initState() {
    // ignore: unnecessary_statements
    super.initState;
    changeScreen(context);    
  }

  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Theme.of(context).backgroundColor;

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