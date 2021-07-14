import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({ Key? key }) : super(key: key);

  @override
  _Onboarding3State createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Theme.of(context).backgroundColor;
    dynamic headline5 = Theme.of(context).textTheme.headline5;
    dynamic headline6 = Theme.of(context).textTheme.headline6;
    // Color primaryColor = Theme.of(context).primaryColor;
    // Color backgroundColor = Theme.of(context).backgroundColor;

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
              child: Image.asset('assets/images/happyguy 1-2.png', )),
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
                        textStyle: TextStyle(
                        fontSize: 16,
                        letterSpacing: 10,
                        color: Colors.white,
                        height: 1.1
                      ),),
                  )
                ],
              )),
              Positioned(
                bottom: 96,
                right: 32,
                left: 32,
                
                      child: Button(
                      onPressed: () => Navigator.of(context).pushNamed('on'),
                      label: 'next',
                      ),),
        ]),
    );
  }
}