import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SomethingWentWrong extends StatelessWidget {
  // const SomethingWentWrong({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Looks Like you\'re not connected to the internet'.toUpperCase(),
            style: GoogleFonts.inter(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFC4C4C4)
            )),
          Icon(Icons.wifi_off, color: Color(0xFFC4C4C4))
        ]
      ),
    );
  }
}