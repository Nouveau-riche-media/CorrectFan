
import 'package:correctfan/widgets/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Livescores/Next.dart';
import 'Livescores/Today.dart';
import 'Livescores/Tomorrow.dart';
import 'Livescores/Yesterday.dart';

class LiveScore extends StatefulWidget {
  // const LiveScore({ Key? key }) : super(key: key);

  @override
  _LiveScoreState createState() => _LiveScoreState();
}

class _LiveScoreState extends State<LiveScore> {
  String dayAfter() {

    Map<int, String> monthMap = {
    1 : 'January',
    2: 'February',
    3: 'March',
    4: 'April',
    5: 'May',
    6: 'June',
    7: 'July',
    8: 'August',
    9: 'September',
    10: 'October',
    11: 'November',
    12: 'December',
  };

  var month = DateTime.now().month;
  var thisMonth = monthMap[month];
  var day2 = DateTime(DateTime.now().day + 2);
  var i = day2.toString().substring(2, 4);

  if (int.parse(i) > 31 ) {
    
  }

  var next = i + ' $thisMonth';

    return next;
  }
  
  
  // var month = DateTime.now().month;
  // var day = DateTime.now().day;
  
  List<Widget> view = [
    Yesterday(),
    Today(),
    Tomorrow(),
    Next(),
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: SvgPicture.asset(
                'assets/images/cflettermark.svg',
                width: 120,
              ),
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

              Tab(child: Text(dayAfter(),
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