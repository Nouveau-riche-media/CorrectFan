import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  const Splash({ Key? key }) : super(key: key);

  
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