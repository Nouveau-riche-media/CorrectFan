import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double text(double n, BuildContext context) {
  return MediaQuery.of(context).size.width / n;
}

double height(double n, BuildContext context) {
  return MediaQuery.of(context).size.height / n;
}


Color primary = Color(0xFF003E75);
Color secondary = Color(0xFF092C4C);
// Color acccent = Color(0xFF348951);


class AppTheme {
  
  TextStyle headline5(BuildContext context){
    return GoogleFonts.inter(
      fontWeight: FontWeight.bold,
        color: Colors.white,
        // letterSpacing: ,
        letterSpacing: 5,
        fontSize: text(35, context),
        height: 1.1
    );
  }

  TextStyle headline4(BuildContext context) {
    return GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        // letterSpacing: ,
        // letterSpacing: 5,
        fontSize: text(40, context),
        height: 1.1);
  }

  TextStyle headline3(BuildContext context) {
    return GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        // letterSpacing: ,
        // letterSpacing: 5,
        fontSize: text(50, context),
        height: 1.1);
  }

  TextStyle headline2(BuildContext context){
    return GoogleFonts.inter(
      fontWeight: FontWeight.bold,
        color: Colors.white,
        // letterSpacing: ,
        // letterSpacing: 5,
        fontSize: text(60, context),
        height: 1.1
    );
  }

  TextStyle headline1(BuildContext context, Color color) {
    return GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        color: color,
        // letterSpacing: ,
        letterSpacing: 5,
        fontSize: text(35, context),
        height: 1.1);
  }


  // static TextTheme textTheme = TextTheme(
  //    headline5: GoogleFonts.inter(
  //             textStyle: TextStyle(
  //                 fontWeight: FontWeight.bold,
  //                 color: Colors.white,
  //                 // letterSpacing: ,
  //                 letterSpacing: 5,
  //                 fontSize: text(35, context),
  //                 height: 1.1),
  //           ),
  //           headline4: GoogleFonts.inter(
  //             textStyle: TextStyle(fontSize: 32, height: 1.1),
  //           ),
  //           headline3: GoogleFonts.inter(
  //             textStyle: TextStyle(fontSize: 40, height: 1.1),
  //           ),
  //           headline6: GoogleFonts.inter(
  //             textStyle: TextStyle(
  //                 fontSize: 20, color: Colors.white, height: 1.1),
  //           ),
  //           bodyText1: GoogleFonts.inter(
  //             textStyle: TextStyle(
  //                 fontSize: 12, color: Colors.black, height: 1.1),
  //           ),
  //           caption: GoogleFonts.inter(
  //               fontWeight: FontWeight.w800,
  //               fontSize: 12,
  //               color: Color(0xFF007BEA),
  //               shadows: [
  //                 BoxShadow(
  //                     color: Color.fromARGB(25, 0, 0, 0),
  //                     offset: Offset(0, 4),
  //                     blurRadius: 4)
  //               ]),
  //           subtitle1:
  //               GoogleFonts.inter(color: Colors.white, fontSize: 16),
  //           subtitle2: GoogleFonts.inter(
  //               color: Colors.white,
  //               fontSize: 16,
  //               fontWeight: FontWeight.bold));
}