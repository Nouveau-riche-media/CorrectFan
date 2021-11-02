import 'package:correctfan/Screens/Onboarding/signUp.dart';
import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding3 extends StatefulWidget {
  // const Onboarding3({ Key? key }) : super(key: key);

  @override
  _Onboarding3State createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {

    

  @override
  Widget build(BuildContext context) {

    Color backgroundColor = secondary;
    dynamic headline5 = AppTheme.headline3(context, white, FontWeight.bold);
    

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        clipBehavior: Clip.antiAlias,     
        alignment: Alignment.centerRight,
        // fit: Stackfit,
        children: [
          Positioned(
            right: -150,
            top: -100,
            child: IlwLogo()
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset('assets/images/happyguy 1-2.png')),
            Positioned(
              left: 32,
              top: 207,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CONNECT\n\nWITH\n\nFRIENDS',
                    textAlign: TextAlign.left,
                    style: headline5,
                  ),

                ],
              )),
              Positioned(
                bottom: 96,
                right: 32,
                left: 32,
                
                child: Button(
                  onPressed: () => Get.offAll(SignUp()),
                  label: 'Get Started',
                  ),),
        ]),
    );
  }
}