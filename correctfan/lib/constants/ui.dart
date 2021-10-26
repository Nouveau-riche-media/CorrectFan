import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double text(double n, BuildContext context) {
  return MediaQuery.of(context).size.width / n;
}

double height(double n, BuildContext context) {
  return MediaQuery.of(context).size.height / n;
}

double width(double n, BuildContext context) {
  return MediaQuery.of(context).size.width / n;
}


Color primary = Color(0xFF003E75);
Color secondary = Color(0xFF092C4C);
Color white = Colors.white;
Color black = Colors.black;
Color grey = Color(0xFFB1B2B6);
// Color acccent = Color(0xFF348951);


class AppTheme {

  static TextStyle headline6(BuildContext context, Color color){
    return GoogleFonts.inter(
      fontWeight: FontWeight.bold,
        color: color,
        fontSize: text(40, context),
        height: 1.1
    );
  }
  
  static TextStyle headline5(BuildContext context, Color color){
    return GoogleFonts.inter(
      fontWeight: FontWeight.bold,
        color: color,
        fontSize: text(32, context),
        height: 1.1
    );
  }

  static TextStyle headline4(BuildContext context, Color color, [FontWeight? fontWeight]) {
    return GoogleFonts.inter(
        fontWeight: fontWeight,
        color: color,
        fontSize: text(24, context),
        height: 1.1);
  }

  static TextStyle headline3(BuildContext context, Color color) {
    return GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        color: color,
        fontSize: text(16, context),
        height: 1.1);
  }

  static TextStyle headline2(BuildContext context, Color color){
    return GoogleFonts.inter(
      fontWeight: FontWeight.bold,
        color: color,
        
        fontSize: text(12, context),
        height: 1.1
    );
  }

  static TextStyle headline1(BuildContext context, Color color) {
    return GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        color: color,
        
        fontSize: text(8, context),
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