import 'dart:async';

import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'signUp.dart';

class Onboarding1 extends StatefulWidget {
  // const Onboarding1({ Key? key }) : super(key: key);

  @override
  _Onboarding1State createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {

changeScreen(BuildContext context){
  return Timer(Duration(milliseconds: 5000), () async {
    await Navigator.popAndPushNamed(context, 'on2');
  });
}

  @override
  
  void initState() {
    // ignore: unnecessary_statements
    super.initState;
    changeScreen(context);    
  }


  @override
  Widget build(BuildContext context) {

    Color backgroundColor = secondary;
    dynamic headline5 = AppTheme.headline3(context, white, FontWeight.bold);
    

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'on2'),
      child: Scaffold(
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
                child: Image.asset('assets/images/happyguy 1.png', )),
              Positioned(
                left: 32,
                top: 207,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ENTER\n\nDAILY\n\nCONTESTS',
                      textAlign: TextAlign.left,
                      style: headline5,
                    ),
      
                    SizedBox(height: 12,),
      
                    Text(
                      'WIN CASH DAILY',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                          fontSize: text(32, context),
                          letterSpacing: 10,
                          color: white,
                          height: 1.1
                        ),
                    )
                  ],
                )),
                        Positioned(
                          bottom: 46,
                          right: 32,
                          child: TextButton(
                            onPressed:  () {
                              Get.offAll(SignUp());
                            },
                            child: Text('Skip>',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              color: white,
                              decoration: TextDecoration.underline,
                              decorationThickness: 3,
                              decorationStyle: TextDecorationStyle.solid,
                              fontSize: text(40, context)),)))
          ]),
      ),
    );
  }
}