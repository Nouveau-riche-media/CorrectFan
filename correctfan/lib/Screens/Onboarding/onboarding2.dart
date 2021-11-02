
import 'dart:async';

import 'package:correctfan/constants/ui.dart';
import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding2 extends StatefulWidget {
  // const Onboarding2({ Key? key }) : super(key: key);

  @override
  _Onboarding2State createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {

  changeScreen(BuildContext context){
  return Timer(Duration(milliseconds: 5000), () async {
    await Navigator.pushNamed(context, 'on3');
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

    Color backgroundColor = secondary;
    dynamic headline5 = AppTheme.headline3(context, white, FontWeight.bold);
    // dynamic headline6 = Theme.of(context).textTheme.headline6;
    // Color primaryColor = Theme.of(context).primaryColor;
    // Color backgroundColor = Theme.of(context).backgroundColor;

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'on3'),
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
                right: 0,
                bottom: 0,
                child: Image.asset('assets/images/happyguy 1-1.png', )),
              Positioned(
                left: 32,
                top: 207,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'RECIEVE\n\nINSTANT\n\nREWARDS',
                      textAlign: TextAlign.left,
                      style: headline5,
                    ),
    
                    // SizedBox(height: 12,),
    
                    // Text(
                    //   'WIN CASH DAILY',
                    //   style: GoogleFonts.inter(
                    //       textStyle: TextStyle(
                    //       fontSize: 16,
                    //       letterSpacing: 10,
                    //       color: Colors.white,
                    //       height: 1.1
                    //     ),),
                    // )
                  ],
                )),
                        Positioned(
                          bottom: 46,
                          right: 32,
                          child: Row(
                          children: [
                            TextButton(
                              onPressed:  () => Get.toNamed('signUp'),
                              child: Text('Skip>',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                decorationStyle: TextDecorationStyle.solid,
                                fontSize: text(40, context)),)),
                          ]))
          ]),
      ),
    );
  }
}