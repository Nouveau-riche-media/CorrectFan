import 'package:correctfan/Livescores/Next.dart';
import 'package:correctfan/Livescores/Today.dart';
import 'package:correctfan/Livescores/Tomorrow.dart';
import 'package:correctfan/Livescores/Yesterday.dart';
import 'package:correctfan/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveScore extends StatefulWidget {
  // const LiveScore({ Key? key }) : super(key: key);

  @override
  _LiveScoreState createState() => _LiveScoreState();
}

class _LiveScoreState extends State<LiveScore> {

  // DateTime month = DateTime.parse.day
  
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: SvgPicture.asset('assets/images/cflettermark.svg'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(child: Text('Yesterday',
                style: GoogleFonts.lato(
                  fontSize: 12,
                  fontWeight: FontWeight.w800
                ),)),

              Tab(child: Text('Today',
                style: GoogleFonts.lato(
                  fontSize: 12,
                  fontWeight: FontWeight.w800)),),

              Tab(child: Text('Tomorrow',
                style: GoogleFonts.lato(
                  fontSize: 12,
                  fontWeight: FontWeight.w800),)),

              Tab(child: Text('19 August',
                style: GoogleFonts.lato(
                  fontSize: 12,
                  fontWeight: FontWeight.w800),))
              ],)
        ),
        body: TabBarView(

          children: [
            Yesterday(),
            Today(),
            Tomorrow(),
            Next(),
          ],
        ),
      )
    );
  }
}