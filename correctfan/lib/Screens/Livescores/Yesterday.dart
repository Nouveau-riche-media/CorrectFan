import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Yesterday extends StatefulWidget {
  const Yesterday({ Key? key }) : super(key: key);

  @override
  _YesterdayState createState() => _YesterdayState();
}

class _YesterdayState extends State<Yesterday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 14),
          elevation: 4,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/pl.svg'),
                SizedBox(height:8),
                Text('MATCHDAY 35 of 38',
                  style: GoogleFonts.inter(
                    color: Color(0xFF828282),
                    fontWeight: FontWeight.w900,
                    fontSize: 10,)),
                    SizedBox(height: 8),
                    Divider(color: Theme.of(context).backgroundColor, indent: 8, endIndent: 8,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  height: MediaQuery.of(context).size.height / 2 + 32,
                  child: ListView.separated(
                    itemBuilder: (index, x) => Scores(),
                    separatorBuilder: (index, x) => Divider(
                      color: Theme.of(context).primaryColor
                      ,
                    ),
                    itemCount: 8),
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}